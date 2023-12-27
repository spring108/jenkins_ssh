#!/bin/bash

my_version=$1

if [ "$my_version" = "" ]
then
	echo 'Версия не указана в первом параметре'
	exit
fi

cd /etc/jenkins_ssh
yes | cp index-template.html index.html

sed -e "s/QQQ123QQQ s/$my_version" ./index.html


