#! /bin/bash

/opt/docker/install.sh && echo "Ok install"
mkdir /run/sshd
/usr/sbin/sshd -D

