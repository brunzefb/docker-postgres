#!/bin/bash
id=$(docker ps | tail -n 1 | cut -f1 -d ' ')
docker exec -it ${id} ash