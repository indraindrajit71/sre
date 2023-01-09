FROM ubuntu:latest
USER root

ENV CUSTODIAN_HOME /var/custodian
VOLUME /var/custodian

## Install python3

RUN apt update -y && \
apt install software-properties-common -y && \
add-apt-repository ppa:deadsnakes/ppa -y && \
apt update -y && \
apt install python3.8 -y

## Install custodian
RUN apt-get install python3-venv -y 
RUN python3 -m venv custodian 
RUN source custodian/bin/activate
RUN pip install c7n

## Install AWS Cli

RUN apt-get install awscli -y 

## Developer OU
ENV AWS_ACCESS_KEY_ID ""
ENV AWS_SECRET_ACCESS_KEY ""

ENTRYPOINT ["/bin/custodian", "run", "-s", "out", "custodian_start.yml", "--region=us-east-1"]
