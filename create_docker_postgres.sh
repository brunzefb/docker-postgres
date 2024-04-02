#!/bin/bash 
docker run \
  --name pgsql-dev \
  --rm \
  --detach \
  -e POSTGRES_PASSWORD=test1234 \
  -p 5432:5432 \
 postgres:16-bullseye