#!/bin/bash

my_version=$1

if [ "$my_version" = "" ]
then
	echo 'No version in first parameter'
	exit
fi


cd /etc/jenkins_ssh

sed -e "s/QQQ123QQQ/$my_version/" ./index-template.html > ./index.html



echo '{"insecure-registries" : ["158.160.108.198:8123"]}' > /etc/docker/daemon.json
service docker restart

docker login 158.160.108.198:8123 --username admin --password 34-Nexus-!
echo 'docker login success'

docker build -t myweb:$my_version .
echo 'docker build success'

docker tag myweb:$my_version 158.160.108.198:8123/myweb:$my_version
echo 'docker tag success'

docker push 158.160.108.198:8123/myweb:$my_version
echo 'docker push success'


echo 'END build process success!! *****************************************'
