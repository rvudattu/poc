FROM python:3.9-slim

# Allow statements and log messages to immediately appear in the Knative logs
ENV PYTHONUNBUFFERED True

COPY . /src
WORKDIR /src

RUN pip install Flask
ENV PORT 8080

CMD ["python", "name.py"]
