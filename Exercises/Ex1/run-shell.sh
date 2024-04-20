#!/bin/bash
id=$(docker run --name "example1" -d proget.netadds.net/dockerimages/example1:v1)
docker exec -it ${id} ash