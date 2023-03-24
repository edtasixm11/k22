#! /bin/bash
# Kserver
# @edt ASIX M11-SAD Curs 2022-2023

cp /opt/docker/krb5.conf /etc/krb5.conf
cp /opt/docker/nslcd.conf /etc/nslcd.conf
cp /opt/docker/nsswitch.conf /etc/nsswitch.conf
cp /opt/docker/ldap.conf /etc/ldap/ldap.conf

# Usuaris purs unix, amb /etc/passwd IP i AP
for user in unix01 unix02 unix03 unix04 unix05
do
  useradd -m -s /bin/bash $user
  echo -e "$user\n$user" | passwd $user
done


