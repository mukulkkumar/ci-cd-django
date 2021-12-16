#!/bin/bash

echo "**********************"
echo "**Test Docker Image **"
echo "**********************"

ssh -i /home/zookeeper_solr.pem ubuntu@3.23.2.101 sudo docker run --name django_server -d -p 8000:8000 django_server:latest

if [[ $(ssh -i /home/zookeeper_solr.pem ubuntu@3.23.2.101 sudo docker exec -ti django_server bash -c "python manage.py test" | grep "OK") ]]; then
    echo "Test successful"
else
    echo "Test Failure"
    exit 1
fi
