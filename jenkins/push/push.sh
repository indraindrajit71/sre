#!/bin/bash

echo "*******************************************"
echo "***********pushing image*******************"
echo "*******************************************"

IMAGE="jdk"
BUILD_TAG=0.4
PASS=Inbox5!12345

echo "*******************************************"
echo "************Logging************************"
echo "*******************************************"

docker login -u indraindrajit71 -p $PASS

echo "************tagging image******************"

docker tag $IMAGE:$BUILD_TAG indraindrajit71/$IMAGE:$BUILD_TAG

echo "**************pushing image***************"

docker push indraindrajit71/$IMAGE:$BUILD_TAG


