FROM python:3.7-slim


COPY . /src
WORKDIR /src

RUN pip install Flask
ENV PORT 8080

CMD ["python", "name.py"]
