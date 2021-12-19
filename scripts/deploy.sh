#!/bin/bash

echo "**********************"
echo "**Deploy Docker Image **"
echo "**********************"

ssh -i /home/devops.pem ubuntu@3.137.101.234 sudo docker pull kumarm5/django_server
ssh -i /home/devops.pem ubuntu@3.137.101.234 sudo docker run -d -p 8000:8000 kumarm5/django_server:latest
