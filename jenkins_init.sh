#!/bin/bash
mkdir -pv /opt/jenkins_home/
sudo chown 1000:1000 /opt/jenkins_home/
docker-compose -f jenkins.yml up -d
