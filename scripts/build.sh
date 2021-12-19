#!/bin/bash

echo "****************************"
echo "** Building Docker Image ***"
echo "****************************"

ssh -i /home/devops.pem ubuntu@3.18.64.78 sudo docker-compose -f /home/ubuntu/project/ci-cd-django/docker-compose.yml build --no-cache
