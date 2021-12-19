#!/bin/bash

echo "********************"
echo "** Pushing image ***"
echo "********************"

IMAGE="django_server"

echo "** Logging in ***"
ssh -i /home/devops.pem ubuntu@3.18.64.78 sudo docker login -u kumarm5 -p $PASS
echo "*** Tagging image ***"
ssh -i /home/devops.pem ubuntu@3.18.64.78 sudo docker tag $IMAGE:latest kumarm5/$IMAGE:latest
echo "*** Pushing image ***"
ssh -i /home/devops.pem ubuntu@3.18.64.78 sudo docker push kumarm5/$IMAGE:latest
echo "** Logout ***"
ssh -i /home/devops.pem ubuntu@3.18.64.78 sudo docker logout
