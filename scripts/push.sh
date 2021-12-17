#!/bin/bash

echo "********************"
echo "** Pushing image ***"
echo "********************"

IMAGE="django_server"

echo "** Logging in ***"
docker login -u kumarm5 -p $PASS
echo "*** Tagging image ***"
docker tag $IMAGE:$BUILD_TAG kumarm5/$IMAGE:$BUILD_TAG
echo "*** Pushing image ***"
docker push kumarm5/$IMAGE:$BUILD_TAG
