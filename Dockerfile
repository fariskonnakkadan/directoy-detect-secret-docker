FROM python:3.9-slim

RUN pip install detect-secrets

RUN apt-get update && apt-get install -y git

WORKDIR /app

COPY entrypoint.sh /app/entrypoint.sh

ENTRYPOINT ["/app/entrypoint.sh"]
