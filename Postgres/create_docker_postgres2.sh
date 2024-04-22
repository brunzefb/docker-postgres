#!/bin/bash 
docker create volume postgres

if [ -z "${POSTGRES_PASSWORD}" ]; then
  echo "Error: POSTGRES_PASSWORD is not set"
  exit 1
fi

docker run \
  --name pgsql-dev \
   -v postgres:/var/lib/postgresql/data \
  --rm \
  --detach \
  -e POSTGRES_PASSWORD=${POSTGRES_PASSWORD} \
  -p 5432:5432 \
 postgres:16-bullseye

 string connString = \
  $"Host=db;Username=postgres;Password={pw};Database=postgres"