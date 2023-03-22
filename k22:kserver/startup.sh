#! /bin/bash

/opt/docker/install.sh && echo "Ok install"

/usr/sbin/krb5kdc -P /var/run/krb5-kdc.pid
/usr/sbin/kadmind -nofork
