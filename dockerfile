FROM python:3.8-slim-buster
WORKDIR /app
COPY app.py ./
COPY requirements.txt ./
RUN pip3 install -r requirements.txt
CMD python -m flask run --host=0.0.0.0 --port=4000