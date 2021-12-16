#!/bin/bash

echo "**********************"
echo "**Test Docker Image **"
echo "**********************"

# ssh -i /home/zookeeper_solr.pem ubuntu@3.137.101.239 sudo docker run --name django_server -d -p 8000:8000 django_server:latest

if ssh -i /home/zookeeper_solr.pem ubuntu@3.137.101.239 sudo docker-compose -f /home/ubuntu/project/ci-cd-django/docker-compose.yml run web python manage.py test; then
    echo "Test successful"
else
    echo "Test Failure"
    exit 1
fi
