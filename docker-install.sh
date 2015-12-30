#!/bin/bash
# Docker install on centos 7

set -x
 
 if [ "$(id -u)" != "0" ]; then
 echo "This script must be run as root" 1>&2
 exit 1
fi

if [ -z "$( egrep "CentOS|Redhat" /etc/issue)" ]; then
echo 'Only for Redhat or CentOS'
exit

fi

yum install -y docker

systemctl start docker

docker pull centos

docker images centos
