FROM python:3.12.9-alpine3.21 as base

RUN mkdir /app
WORKDIR /app
COPY . /app

RUN pip3 install -r requirements.txt

EXPOSE 8080
ENTRYPOINT ["python", "hello_world.py"]
