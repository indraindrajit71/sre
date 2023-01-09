#!/bin/bash

echo "************************************************"
echo "*****Building-Jar*************"
echo "************************************************"

docker run -it -v $PWD/java-app:/app -v /root/.m2:/root/.m2  -w /app maven:3-alpine "$@"
