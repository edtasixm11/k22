#! /bin/bash
# Kserver
# @edt ASIX M11-SAD Curs 2022-2023

cp /opt/docker/krb5.conf /etc/krb5.conf
cp /opt/docker/common-auth /etc/pam.d/common-auth
cp /opt/docker/common-account /etc/pam.d/common-account
cp /opt/docker/common-session /etc/pam.d/common-session
cp /opt/docker/common-password /etc/pam.d/common-password

