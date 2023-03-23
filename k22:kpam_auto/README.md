#k22:kpam
```
$ docker run --rm --name kpam.edt.org -h kpam.edt.org --net 2hisx -it edtasixm11/k22:kpam
```

No cal configurar manualment els fitxers del PAM per posar kerberos,
en fer al install dels paquets ja ho configura automàticament.

```
root@kpam:/opt/docker# su - unix01
unix01@kpam:~$ su - marta
Password: 
marta@kpam:~$ klist
Ticket cache: FILE:/tmp/krb5cc_1007_ChmY1R
Default principal: marta@EDT.ORG

Valid starting     Expires            Service principal
03/23/23 09:08:52  03/23/23 19:08:52  krbtgt/EDT.ORG@EDT.ORG
	renew until 03/24/23 09:08:52
```
