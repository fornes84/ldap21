1. L’usuari “Anna Pou” és ajudant de l’administrador i té permisos per modificar-ho tot.
Tothom pot veure totes les dades de tothom.

	Fitxer acl1.ldif

olcAccess: to * by dn.exact='uid=anna,ou=usuaris,dc=edt,dc=org' write by * read

2. L’usuari “Anna Pou” és ajudant d’administració. Tothom es pot modificar el seu propi
email i homePhone. Tothom pot veure totes les dades de tothom.

olcAccess: to attrs=homePhone by self write by * read
olcAccess: to attrs=mail by self write by * read
olcAccess: to * by dn.exact='uid=anna,ou=usuaris,dc=edt,dc=org' write by * read

3. Tot usuari es pot modificar el seu mail. Tothom pot veure totes les dades de tothom.

olcAccess: to attrs=mail by self write by * read
olcAccess: to * by * read

4. Tothom pot veure totes les dades de tothom, excepte els mail dels altres.

olcAccess: to attrs=mail by self write
olcAccess: to * by * read

5. Tot usuari es pot modificar el seu propi password i tothom pot veure totes les dades
de tothom.

olcAccess: to attrs=userPassword by self write by * read
olcAccess: to * by * read

6. Tot usuari es pot modificar el seu propi password i tothom pot veure totes les dades
de tothom, excepte els altres passwords.

olcAccess: to attrs=userPassword by self write
olcAccess: to * by * read

7. Tot usuari es pot modificar el seu propi password i tot usuari només pot veure les
seves pròpies dades.

olcAccess: to attrs=userPassword by self write
olcAccess: to * by self read

8. Tot usuari pot observar les seves pròpies dades i modificar el seu propi password,email i homephone. 
L’usuari “Anna Pou” pot modificar tots els atributs de tot sexcepte els passwords, que tampoc pot veure. 
L’usuari “Pere Pou” pot modificar els passwords de tothom.


olcAccess: to attrs=userPasswrod by dn.exact='uid=pere,ou=usuaris,dc=edt,dc=org' write by self write
olcAccess: to * by dn.exact='uid=anna,ou=usuaris,dc=edt,dc=org' write
olAccess: to attrs=mail, attrs=homePhone by self write
olcAccess: to * by self read


´´

ldapmodify -D 'cn=Sysadmin,cn=config' -w syskey -b 'olcDatabase{1}mdb,cn=config' -l 
ldapsearch -x -LLL -D 'cn=Sysadmin,cn=config' -w syskey -b 'olcDatabase={1}mdb,cn=config' olcAccess

