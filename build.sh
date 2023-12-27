#!/bin/bash

my_version=$1

if [ "$my_version" = "" ]
then
	echo 'Версия не указана в первом параметре'
	exit
fi

cd /etc/jenkins_ssh

sed -e "s/QQQ123QQQ/$my_version/" ./index-template.html > ./index.html


