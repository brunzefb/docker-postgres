#!/bin/bash
docker build -t dbclient:v2 --progress=plain --no-cache .
docker tag dbclient:v2 proget.netadds.net/dockerimages/dbclient:v2
docker push proget.netadds.net/dockerimages/dbclient:v2