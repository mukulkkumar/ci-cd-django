#!/bin/bash

echo "****************************"
echo "** Building Docker Image ***"
echo "****************************"

cd /home/
ssh -i zookeeper_solr.pem ubuntu@3.140.100.129 sudo docker-compose -f /home/ubuntu/project/ci-cd-django/docker-compose.yml build --no-cache
