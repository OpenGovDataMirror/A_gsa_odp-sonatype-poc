#!/bin/bash


IQ_SERVER_DNS="http://ec2-111-111-111-111.compute-1.amazonaws.com"
IQ_SERVER_PASSWORD="randompassword"
FILE="/Users/sanhehu/Downloads/webgoat-server-8.1.0.jar"

docker run --mount type=bind,source="${HOME}",target=/tmp/home sonatype/nexus-iq-cli /sonatype/evaluate -s "${IQ_SERVER_DNS}:8070" -i nexus-lifecycle-test -a "admin:${IQ_SERVER_PASSWORD}" -t build /tmp/home/Downloads/webgoat-server-8.1.0.jar
