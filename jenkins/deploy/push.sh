#!/bin/bash

export Image-Name=$(sed -n ‘1p’ /tmp/.path)
export tag=$(sed -n ‘2p’ /tmp/.path)
export pass=$(sed -n ‘3p’ /tmp/.path)

docker login -u indraindrajit71 -p $PASS
cd /home/tomcat && docker-compose up -d

