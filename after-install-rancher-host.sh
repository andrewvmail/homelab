#!/usr/bin/env bash

echo "PermitRootLogin without-password" >> /etc/ssh/sshd_config

/etc/init.d/ssh restart

apt-get upgrade

apt-get update

apt install apt-transport-https ca-certificates curl software-properties-common gnupg2

curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add -

add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian $(lsb_release -cs) stable edge test nightly"

apt update

apt install docker.io