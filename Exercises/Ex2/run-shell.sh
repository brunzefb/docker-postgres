#!/bin/bash
id=$(docker run \
  -v $HOME/git/docker-postgres/Exercises/Ex2/shared:/app \
  --name example2 \
  -d proget.netadds.net/dockerimages/example1:v1)
docker exec -it ${id} ash