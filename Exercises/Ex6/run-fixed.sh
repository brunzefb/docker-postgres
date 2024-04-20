#!/bin/bash
docker run \
  -p 8080:80 \
  -d \
  proget.netadds.net/dockerimages/nginx:1.25.5
