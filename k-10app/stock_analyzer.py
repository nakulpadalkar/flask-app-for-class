import yfinance as yf
import matplotlib
matplotlib.use('Agg')
import matplotlib.pyplot as plt
import io
import base64

def fetch_and_plot_stock(ticker, year):
    # Fetch data for the specified year
    start_date = f"{year}-01-01"
    end_date = f"{year}-12-31"
    
    data = yf.download(ticker, start=start_date, end=end_date)
    
    if data.empty:
        return None
        
    plt.figure(figsize=(8, 4))
    plt.plot(data.index, data['Close'], color='blue', label=f'{ticker} Close Price')
    plt.title(f"{ticker} Stock Price in {year}")
    plt.xlabel("Date")
    plt.ylabel("Price (USD)")
    plt.grid(True)
    plt.legend()
    plt.tight_layout()
    
    img_io = io.BytesIO()
    plt.savefig(img_io, format='png')
    plt.close()
    img_io.seek(0)
    
    return base64.b64encode(img_io.getvalue()).decode('utf-8')

def plot_financials(financials_dict, ticker, year, model_used):
    revenue = financials_dict.get("Total Revenue", 0)
    net_income = financials_dict.get("Net Income", 0)
    
    # Clean up strings if they have commas or dollar signs
    def clean_num(val):
        if isinstance(val, (int, float)): return float(val)
        try:
            val = str(val).replace('$', '').replace(',', '').strip()
            return float(val)
        except:
            return 0.0
            
    revenue = clean_num(revenue)
    net_income = clean_num(net_income)
    
    plt.figure(figsize=(8, 4))
    metrics = ['Total Revenue', 'Net Income']
    values = [revenue, net_income]
    
    plt.bar(metrics, values, color=['green', 'red'])
    plt.title(f"{ticker} Financials {year} (Extracted via {model_used})")
    plt.ylabel("Amount")
    plt.tight_layout()
    
    img_io = io.BytesIO()
    plt.savefig(img_io, format='png')
    plt.close()
    img_io.seek(0)
    
    return base64.b64encode(img_io.getvalue()).decode('utf-8')
