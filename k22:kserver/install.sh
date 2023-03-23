#! /bin/bash
# Kserver
# @edt ASIX M11-SAD Curs 2022-2023

cp /opt/docker/krb5.conf /etc/krb5.conf
cp /opt/docker/kdc.conf  /etc/krb5kdc/kdc.conf
cp /opt/docker/kadm5.acl /etc/krb5kdc/kadm5.acl

kdb5_util create -s -P masterkey

# Usuaris que s'utilitzaran amb LDAP de IP, Kerberos de AP
for user in anna pere marta jordi pau user{01..10} 
do
  kadmin.local -q "addprinc -pw k$user $user"
done 

kadmin.local -q "addprinc -pw kmarta marta/admin"
kadmin.local -q "addprinc -pw kpere pere/admin"
kadmin.local -q "addprinc -pw kpau  pau/admin"
kadmin.local -q "addprinc -pw ksuper super"
kadmin.local -q "addprinc -pw kadmin admin "

# Usuaris que s'utilitzaran amb /etc/passwd de IP i kerberos de AP
for user in kuser{01..06}
do
  useradd -m -s /bin/bash $user
  kadmin.local -q "addprinc -pw $user $user"
done

# Usuaris purs unix, amb /etc/passwd IP i AP
for user in unix01 unix02 unix03 unix04 unix05
do
  useradd -m -s /bin/bash $user
  echo -e "$user\n$user" | passwd $user
done

# Generar el principal per al servidor SSH
kadmin.local -q "addprinc -randkey host/sshd.edt.org"
