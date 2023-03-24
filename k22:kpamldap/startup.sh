#! /bin/bash

/opt/docker/install.sh && echo "Ok install"
nscd
nslcd
pam-auth-update --enable mkhomedir pwquality unix libpam-mount krb5 --remove ldap
/bin/bash
