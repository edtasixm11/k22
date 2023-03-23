#k22:kpam
```
$ docker run --rm --name kpam.edt.org -h kpam.edt.org --net 2hisx -it edtasixm11/k22:kpam
```

No cal configurar manualment els fitxers del PAM per posar kerberos,
en fer al install dels paquets ja ho configura automàticament.

```
kadmin -p marta -w kmarta -q "ktadd -k /etc/krb5.keytab host/sshd.edt.org"

root@sshd:/opt/docker# klist /etc/krb5.keytab 
klist: Bad format in credentials cache (filename: /etc/krb5.keytab)
root@sshd:/opt/docker# klist  -k /etc/krb5.keytab 
Keytab name: FILE:/etc/krb5.keytab
KVNO Principal
---- --------------------------------------------------------------------------
   2 host/sshd.edt.org@EDT.ORG
   2 host/sshd.edt.org@EDT.ORG
```

```
root@sshd:/opt/docker# kinit -p pere
Password for pere@EDT.ORG: 
root@sshd:/opt/docker# klist 
Ticket cache: FILE:/tmp/krb5cc_0
Default principal: pere@EDT.ORG

Valid starting     Expires            Service principal
03/23/23 09:27:02  03/23/23 19:27:02  krbtgt/EDT.ORG@EDT.ORG
	renew until 03/24/23 09:26:59
root@sshd:/opt/docker# 
root@sshd:/opt/docker# ssh pere@sshd.edt.org
Linux sshd.edt.org 5.10.0-19-amd64 #1 SMP Debian 5.10.149-2 (2022-10-21) x86_64

The programs included with the Debian GNU/Linux system are free software;
the exact distribution terms for each program are described in the
individual files in /usr/share/doc/*/copyright.

Debian GNU/Linux comes with ABSOLUTELY NO WARRANTY, to the extent
permitted by applicable law.
Last login: Thu Mar 23 09:26:47 2023 from 172.22.0.3
```

##Configuració

Server
```
KerberosAuthentication yes
KerberosTicketCleanup yes
GSSAPIAuthentication yes
GSSAPICleanupCredentials no
```
Client
```
GSSAPIAuthentication yes
```

