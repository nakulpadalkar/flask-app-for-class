import os
import io
import time
import random
import matplotlib
matplotlib.use('Agg')
import matplotlib.pyplot as plt
from wordcloud import WordCloud
from flask import Flask, render_template, request, flash, redirect, url_for, Response
from edgar import set_identity, Company

import llm_extractor
import stock_analyzer

app = Flask(__name__)
app.secret_key = 'supersecretkey_for_flash_messages'

# SEC edgar requires an identity to be set.
set_identity("Nakul Padalkar nakul.padalkar@example.com")

# Ensure the data directory exists
BASE_DIR = os.path.dirname(os.path.abspath(__file__))
DATA_DIR = os.path.join(BASE_DIR, 'data')
os.makedirs(DATA_DIR, exist_ok=True)

@app.route('/', methods=['GET', 'POST'])
def index():
    if request.method == 'POST':
        tickers_input = request.form.get('ticker', 'AAPL')
        years_input = request.form.get('year', '2025')
        
        tickers = [t.strip().upper() for t in tickers_input.split(',') if t.strip()]
        years_str = [y.strip() for y in years_input.split(',') if y.strip()]
        
        years = []
        for y in years_str:
            try:
                years.append(int(y))
            except ValueError:
                flash(f"Invalid year provided: {y}. Skipping.")

        if not tickers or not years:
            flash("Please provide valid tickers and years.")
            return redirect(url_for('index'))

        downloaded_files = []
        errors = []

        # Iterate over all combinations
        for ticker in tickers:
            try:
                company = Company(ticker)
                # Fetch filings once per ticker to save time, then filter by year
                filings = company.get_filings(form="10-K")
                
                for year in years:
                    target_filing = None
                    for filing in filings:
                        if str(filing.filing_date).startswith(str(year)):
                            target_filing = filing
                            break
                    
                    if not target_filing:
                        errors.append(f"Could not find a 10-K filing for {ticker} in the year {year}.")
                        continue

                    # Random delay between 0 to 45 seconds to avoid rate limits BEFORE downloading HTML
                    delay = random.randint(0, 45)
                    print(f"Waiting for {delay} seconds before downloading {ticker} for {year}...")
                    time.sleep(delay)

                    # Retrieve the HTML content of the filing
                    try:
                        html_content = target_filing.html()
                        if not html_content:
                            errors.append(f"Could not extract HTML for {ticker} 10-K in {year}.")
                            continue

                        # Save to the data folder
                        filename = f"{ticker}_10-K_{year}.html"
                        filepath = os.path.join(DATA_DIR, filename)
                        
                        with open(filepath, 'w', encoding='utf-8') as f:
                            f.write(html_content)
                            
                        # Also extract Item 1A and Item 8 text
                        try:
                            ten_k = target_filing.obj()
                            
                            # Extract Item 1A
                            item_1a = ten_k.risk_factors
                            if item_1a:
                                text_filename = f"{ticker}_Item1A_{year}.txt"
                                text_filepath = os.path.join(DATA_DIR, text_filename)
                                with open(text_filepath, 'w', encoding='utf-8') as f:
                                    f.write(str(item_1a))
                                    
                            # Extract Item 8 (Financials) for LLM
                            item_8 = ten_k.financials
                            if not item_8:
                                # Fallback to Item 7 MD&A if Item 8 is empty
                                item_8 = ten_k.management_discussion
                            
                            if item_8:
                                text_filename = f"{ticker}_Financials_{year}.txt"
                                text_filepath = os.path.join(DATA_DIR, text_filename)
                                with open(text_filepath, 'w', encoding='utf-8') as f:
                                    f.write(str(item_8))
                                    
                        except Exception as e:
                            print(f"Failed to extract text sections for {ticker} {year}: {e}")
                            
                        downloaded_files.append({"ticker": ticker, "year": year, "filename": filename})
                    except Exception as e:
                        errors.append(f"Error downloading {ticker} for {year}: {e}")

            except Exception as e:
                errors.append(f"An error occurred while fetching data for ticker {ticker}: {e}")

        return render_template('results.html', downloaded_files=downloaded_files, errors=errors, data_dir=DATA_DIR)

    return render_template('index.html')

@app.route('/wordcloud/<ticker>/<year>')
def get_wordcloud(ticker, year):
    ticker = ticker.upper()
    text_filename = f"{ticker}_Item1A_{year}.txt"
    text_filepath = os.path.join(DATA_DIR, text_filename)
    
    if not os.path.exists(text_filepath):
        return "Item 1A text not found for this filing. Please try downloading it again.", 404
        
    with open(text_filepath, 'r', encoding='utf-8') as f:
        text = f.read()
        
    if not text.strip():
        return "Item 1A text is empty.", 404
        
    # Generate word cloud
    wordcloud = WordCloud(width=800, height=400, background_color='white').generate(text)
    
    # Save to a BytesIO object
    img_io = io.BytesIO()
    wordcloud.to_image().save(img_io, 'PNG')
    img_io.seek(0)
    
    return Response(img_io.getvalue(), mimetype='image/png')

@app.route('/analyze/<ticker>/<year>')
def analyze_financials(ticker, year):
    ticker = ticker.upper()
    text_filename = f"{ticker}_Financials_{year}.txt"
    text_filepath = os.path.join(DATA_DIR, text_filename)
    
    if not os.path.exists(text_filepath):
        return "Financial text (Item 8/7) not found for this filing. Please download it again.", 404
        
    with open(text_filepath, 'r', encoding='utf-8') as f:
        text = f.read()
        
    if not text.strip():
        return "Financial text is empty.", 404
        
    try:
        financials_dict, model_used = llm_extractor.get_financials(text)
    except Exception as e:
        return f"Failed to extract financials using LLM: {str(e)}", 500
        
    # Plot financials
    financials_graph_b64 = stock_analyzer.plot_financials(financials_dict, ticker, year, model_used)
    
    # Plot stock price
    stock_graph_b64 = stock_analyzer.fetch_and_plot_stock(ticker, year)
    
    return render_template('analysis.html', 
                           ticker=ticker, 
                           year=year,
                           model_used=model_used,
                           financials_graph=financials_graph_b64,
                           stock_graph=stock_graph_b64,
                           financials_data=financials_dict)

if __name__ == '__main__':
    app.run(debug=True, port=5000)
