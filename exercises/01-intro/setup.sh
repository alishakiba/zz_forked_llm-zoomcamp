pip install tqdm notebook openai elasticsearch google-genai
export OPENAI_API_KEY=""
export GEMINI_API_KEY=""
mkdir -p exercises/01-intro
wget https://raw.githubusercontent.com/alexeygrigorev/minsearch/main/minsearch.py -O exercises/01-intro/minsearch.py
# jupyter notebook
pip install minsearch
