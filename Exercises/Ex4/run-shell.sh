#!/bin/bash
docker volume ls | grep example4
if [[ $? -ne 0 ]]; then
  docker volume create example4
fi
set -x
id=$(docker run --name "example4" -v example4:/docker-volume-mount -d proget.netadds.net/dockerimages/example1:v1)
docker exec ${id} ash -c "echo 'test' >>/docker-volume-mount/test.txt"
docker exec  ${id} ash -c "cat /docker-volume-mount/test.txt"
docker rm -f example4
id2=$(docker run --name "example4" -v example4:/docker-volume-mount -d proget.netadds.net/dockerimages/example1:v1)
docker exec  ${id2} ash -c "cat /docker-volume-mount/test.txt"
docker rm -f example4
