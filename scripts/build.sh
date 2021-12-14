#!/bin/bash

echo "****************************"
echo "** Building Docker Image ***"
echo "****************************"

cd /home/ubuntu/project/ci-cd-django/ && sudo docker-compose build --no-cache
