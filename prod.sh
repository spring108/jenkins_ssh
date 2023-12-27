#!/bin/bash

my_version=$1

if [ "$my_version" = "" ]
then
	echo 'No version in first parameter'
	exit
fi


cd /etc/jenkins_ssh

echo '{"insecure-registries" : ["158.160.108.198:8123"]}' > /etc/docker/daemon.json
service docker restart

docker login 158.160.108.198:8123 --username admin --password 34-Nexus-!
echo 'docker login success'

docker pull 158.160.108.198:8123/myweb:$my_version
docker run -d -p 80:80 158.160.108.198:8123/myweb:$my_version
