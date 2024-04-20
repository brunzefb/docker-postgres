#!/bin/bash
docker build -t example5:v1 --progress=plain --no-cache .
docker tag example5:v1 proget.netadds.net/dockerimages/example5:v1
docker push proget.netadds.net/dockerimages/example5:v1