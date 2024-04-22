#!/bin/bash
id=$(docker run --name "example3" -d proget.netadds.net/dockerimages/example1:v1)
docker exec ${id} ash -c "echo 'test' >> ~/test.txt"
docker exec  ${id} ash -c "cat ~/test.txt"
docker rm -f example3
id2=$(docker run --name "example3" -d proget.netadds.net/dockerimages/example1:v1)
docker exec  ${id2} ash -c "cat ~/test.txt"

# cleanup
docker rm -f example3