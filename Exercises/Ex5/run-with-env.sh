#!/bin/bash
docker run \
  -e CONNECTION_STRING="psql://user:password@my-server.com" \
  -t proget.netadds.net/dockerimages/example5:v1 \
  /app/printenv