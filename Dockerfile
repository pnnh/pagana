FROM postgres:16 AS base

WORKDIR /app
COPY . .
RUN chmod +x init.sh

USER postgres