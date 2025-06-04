pip install tqdm notebook openai elasticsearch google-genai
export OPENAI_API_KEY=""
export GEMINI_API_KEY=""
mkdir -p exercises/01-intro
wget https://raw.githubusercontent.com/alexeygrigorev/minsearch/main/minsearch.py -O exercises/01-intro/minsearch.py
# jupyter notebook
pip install minsearch
# run elasticsearch
docker network create elastic
docker pull docker.elastic.co/elasticsearch/elasticsearch:9.0.0
docker run --name es01 --net elastic -p 9200:9200 \
  -p 9300:9300 -it -m 4GB \
  -e "discovery.type=single-node" \
  -e "xpack.security.enabled=false" \
  -e "ES_JAVA_OPTS=-Xms2g -Xmx2g" \
  -e "node.store.allow_mmap=false" \
  docker.elastic.co/elasticsearch/elasticsearch:9.0.0
# docker run -it --name elasticsearch -p 9200:9200 \
#     -p 9300:9300 -e "discovery.type=single-node" \
#     -e "xpack.security.enabled=false" \
#     docker.elastic.co/elasticsearch/elasticsearch:8.4.3
curl http://localhost:9200