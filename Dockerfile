FROM python:3.6-slim-buster

# Allow statements and log messages to immediately appear in the Knative logs
ENV PYTHONUNBUFFERED True

COPY . /src
WORKDIR /src

RUN pip install Flask
ENV PORT 8080

CMD ["python", "name.py"]
