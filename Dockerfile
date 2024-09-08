FROM python:3.12.5-bullseye

WORKDIR /app

RUN apt-get update && \
  apt-get install -y --no-install-recommends \
  git \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*

RUN git config --global --add safe.directory /app