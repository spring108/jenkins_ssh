#!/bin/bash

cd /etc/jenkins_ssh

echo '{"insecure-registries" : ["158.160.108.198:8123"]}' > /etc/docker/daemon.json
service docker restart

#docker login 158.160.108.198:8123 --username admin --password 34-Nexus-!
#echo 'docker login success'

docker run -d -p 80:80 158.160.108.198:8123/myweb:$my_version
