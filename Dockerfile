FROM tiangolo/uvicorn-gunicorn-fastapi:python3.8-slim

RUN apt-get update && \
    apt-get install -y git gcc ncdu && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

COPY requirements.txt .

RUN pip install --upgrade pip
RUN pip install --upgrade -r requirements.txt
RUN rm -rf /root/.cache

COPY app app/

RUN python app/server.py

EXPOSE 5000

CMD ["python", "app/server.py", "serve"]
