import os
import json
import tiktoken
from dotenv import load_dotenv

# Load environment variables
load_dotenv()

TOKEN_LIMIT = 100000
THRESHOLD = int(TOKEN_LIMIT * 0.989) # 98900

def count_tokens(text):
    try:
        encoding = tiktoken.get_encoding("cl100k_base")
        return len(encoding.encode(text))
    except Exception:
        # Fallback approximation
        return len(text.split()) * 1.3

def extract_financials_with_openai(text):
    from openai import OpenAI
    client = OpenAI(api_key=os.getenv("OPENAI_API_KEY"))
    
    prompt = "Extract the Total Revenue and Net Income from the following financial document text. Return ONLY a valid JSON object with keys 'Total Revenue' and 'Net Income'. Format values as numbers. Text:\n" + text
    
    response = client.chat.completions.create(
        model="gpt-4-turbo",
        messages=[{"role": "user", "content": prompt}],
        response_format={"type": "json_object"}
    )
    return json.loads(response.choices[0].message.content)

def extract_financials_with_gemini(text):
    import google.generativeai as genai
    genai.configure(api_key=os.getenv("GEMINI_API_KEY"))
    
    prompt = "Extract the Total Revenue and Net Income from the following financial document text. Return ONLY a valid JSON object with keys 'Total Revenue' and 'Net Income'. Format values as numbers. Text:\n" + text
    
    model = genai.GenerativeModel('gemini-1.5-pro')
    response = model.generate_content(prompt)
    
    # Clean up response to parse JSON
    result_text = response.text.strip()
    if result_text.startswith("```json"):
        result_text = result_text[7:-3]
    return json.loads(result_text)

def extract_financials_with_huggingface(text):
    from huggingface_hub import InferenceClient
    client = InferenceClient(token=os.getenv("HUGGINGFACE_API_KEY"))
    
    prompt = "Extract the Total Revenue and Net Income from the following financial document text. Return ONLY a valid JSON object with keys 'Total Revenue' and 'Net Income'. Format values as numbers. Text:\n" + text
    
    # Using Mixtral or similar model available via API
    response = client.text_generation(prompt, model="mistralai/Mixtral-8x7B-Instruct-v0.1", max_new_tokens=200)
    
    # Try to parse
    # HuggingFace responses can be unstructured, best effort parse
    result_text = response.strip()
    if result_text.startswith("```json"):
        result_text = result_text.split("```json")[1].split("```")[0]
    return json.loads(result_text)

def get_financials(text):
    tokens = count_tokens(text)
    
    print(f"Text token count: {tokens}")
    
    # Waterfall logic based on token limit threshold
    if tokens <= THRESHOLD and os.getenv("OPENAI_API_KEY"):
        print("Using OpenAI...")
        try:
            return extract_financials_with_openai(text), "OpenAI"
        except Exception as e:
            print(f"OpenAI failed: {e}")
            
    # If tokens > THRESHOLD, OpenAI is skipped (or failed). 
    # Switch to Gemini.
    # Note: If text is still > threshold, we should truncate it so it fits Gemini's limit, since Gemini is also 100k here.
    text_to_use = text
    if tokens > THRESHOLD:
        print(f"Token count {tokens} exceeds threshold {THRESHOLD}. Truncating and switching to next model.")
        # Truncate text roughly to fit
        approx_chars = int(THRESHOLD * 4) # ~4 chars per token
        text_to_use = text[:approx_chars]
        
    if os.getenv("GEMINI_API_KEY"):
        print("Using Gemini...")
        try:
            return extract_financials_with_gemini(text_to_use), "Gemini"
        except Exception as e:
            print(f"Gemini failed: {e}")
            
    # Finally HuggingFace
    if os.getenv("HUGGINGFACE_API_KEY"):
        print("Using HuggingFace...")
        try:
            return extract_financials_with_huggingface(text_to_use), "HuggingFace"
        except Exception as e:
            print(f"HuggingFace failed: {e}")
            
    raise Exception("All configured LLMs failed or no API keys are set in .env")

