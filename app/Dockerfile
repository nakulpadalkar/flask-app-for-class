# syntax=docker/dockerfile:1

FROM python:3.10
COPY requirements.txt requirements.txt
WORKDIR /python-docker
RUN pip install -r ../requirements.txt
COPY . .
# EXPOSE $PORT
# CMD gunicorn --workers=4 --bind 0.0.0.0:$PORT app:app
CMD ["python3", "-m", "flask", "run", "--host=0.0.0.0"]