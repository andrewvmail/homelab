#!/usr/bin/env bash

echo "PermitRootLogin without-password" >> /etc/ssh/sshd_config

/etc/init.d/ssh restart

apt-get install curl

curl https://releases.rancher.com/install-docker/19.03.sh | sh
