#!/bin/bash

echo "****************************"
echo "** Building Docker Image ***"
echo "****************************"

cd ../ && sudo docker-compose build --no-cache
