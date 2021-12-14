#!/bin/bash

echo "****************************"
echo "** Building Docker Image ***"
echo "****************************"

cd ../ && docker-compose build --no-cache
