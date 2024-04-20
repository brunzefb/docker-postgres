#!/bin/bash
docker pull nginx:1.25.5
docker tag nginx:1.25.5 proget.netadds.net/dockerimages/nginx:1.25.5
docker push proget.netadds.net/dockerimages/nginx:1.25.5