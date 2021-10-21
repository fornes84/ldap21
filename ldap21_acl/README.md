

ldap21:acl
engjegat interactivament

ack---> acces

*eliminats schema innecesaries
*definir la base de ades cn=config amb usuaris cn=Sysadmin,cn=config i passwd syskey.


slapcat -n0

ldapsearch -x -LLL -D 'cn=Sysadmin,cn=config' -w syskey -b'cn=config' | grep dn

ldapsearch -x -LLL -D 'cn=Sysadmin,cn=config' -w syskey -b 'cn=config' olcDatabase={1}mdb

ldapmodify -xvc -D 'cn=Sysadmin,cn=config' -w syskey -f acl1.ldif


Mirar com a anonymus:

	ldapsearch -x -LLL dn

Mirar com a algú:

	ldapsearch -x -LLL -D 'uid=Anna,ou=usuaris,dc=edt' -w anna dn
 
Intentar editar lo meu (opcio mes facil cambiar el password)

	ldappasswd  -x -LLL -D 'uid=Anna,ou=usuaris,dc=edt' -w anna -s passwordcaca
	NO HAURIA DE PODER
 
Intentar editar lo del altres


