#!/bin/bash

echo "****************************"
echo "** Building Docker Image ***"
echo "****************************"

ssh -i /home/zookeeper_solr.pem ubuntu@3.23.2.101 sudo docker-compose -f /home/ubuntu/project/ci-cd-django/docker-compose.yml build --no-cache
