#!/bin/bash

my_version=$1

if [ "$my_version" = "" ]
then
	echo 'No version in first parameter'
	exit
fi

echo '{"insecure-registries" : ["158.160.108.198:8123*"]}' > /etc/docker/daemon.json

cd /etc/jenkins_ssh

sed -e "s/QQQ123QQQ/$my_version/" ./index-template.html > ./index.html


