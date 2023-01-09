#!/bin/bash

echo -e "**********************************************"
echo -e "*****copy the new jar to build location*******"
echo -e "**********************************************"

cp -pr java-app/target/*.jar jenkins/build/

echo -e "**********************************************"
echo -e "*****building Docker Images*******************"
echo -e "**********************************************"

cd jenkins/build/ && docker build -t jdk:0.4 -f Dockerfile-java . 


