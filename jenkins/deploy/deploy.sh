#!/bin/bash

echo $jdk >> /tmp/.path
echo $BUILD_TAG >> /tmp/.path
echo $PASS >> /tmp/.path

scp -i prodkey /tmp/.path prod-user@machine-ip:/tmp/.path
scp -i prodkey jenkins/deploy/publish prod-user@machine-ip:/tmp/publish
