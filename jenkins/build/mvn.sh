#!/bin/bash

echo "************************************************"
echo "*****Building-Jar*************"
echo "************************************************"

docker run -v $PWD/java-app:/app -w /app maven:3-alpine "$@"
