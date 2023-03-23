#! /bin/bash
# Kserver
# @edt ASIX M11-SAD Curs 2022-2023

cp /opt/docker/krb5.conf /etc/krb5.conf
cp /opt/docker/common-auth /etc/pam.d/common-auth
cp /opt/docker/common-account /etc/pam.d/common-account
cp /opt/docker/common-session /etc/pam.d/common-session
cp /opt/docker/common-password /etc/pam.d/common-password

# Usuaris purs unix, amb /etc/passwd IP i AP
for user in unix01 unix02 unix03 unix04 unix05
do
  useradd -m -s /bin/bash $user
  echo -e "$user\n$user" | passwd $user
done

# Usuaris  només per practicar fins que no es configuri LDAP de IP
for user in anna pere marta jordi pau user{01..10} 
do
  useradd -m -s /bin/bash $user
done

