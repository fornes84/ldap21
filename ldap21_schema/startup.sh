#! /bin/bash

rm -rf /etc/ldap/slapd.d/*
rm -rf /var/lib/ldap/*
slaptest -f /opt/docker/slapd.conf -F /etc/ldap/slapd.d
slapadd  -F /etc/ldap/slapd.d -l /opt/docker/edt.org.ldif
#slapcat

chown -R openldap.openldap /etc/ldap/slapd.d /var/lib/ldap
cp /opt/docker/ldap.conf /etc/ldap/ldap.conf
/usr/sbin/slapd
#-d0

# TANT CLIENT COM SERVIDOR HAURAN DE CREAR-SE EN LA MATEIXA XARXA
# EXEMPLE SERVIDOR AMB PROPAGACIO DE PORT: docker run --rm --net 2hisix -p 389:389 --name ldap.edt.org  -h ldap.edt.org -d edtasixm06/ldap21:base

