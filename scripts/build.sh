#!/bin/bash

echo "****************************"
echo "** Building Docker Image ***"
echo "****************************"

cd /home/  
ssh -i zookeeper_solr.pem ubuntu@3.137.101.239
cd project/ci-cd-django/
docker-compose build --no-cache
