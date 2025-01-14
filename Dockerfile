FROM python:3.11-slim
COPY . /
WORKDIR /
RUN apt-get update && apt-get install -y pkg-config python3-dev default-libmysqlclient-dev build-essential default-libmysqlclient-dev && pip install --upgrade pip && pip install -r requirements.txt
EXPOSE $PORT
CMD gunicorn --workers=4 --bind 0.0.0.0:$PORT app:app