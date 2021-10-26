1. L’usuari “Anna Pou” és ajudant de l’administrador i té permisos per modificar-ho tot.
Tothom pot veure totes les dades de tothom.

  add: olcAccess
  olcAccess: to * by dn.exact='uid=anna,ou=usuaris,dc=edt,dc=org' write by * read

2. L’usuari “Anna Pou” és ajudant d’administració. Tothom es pot modificar el seu propi
email i homePhone. Tothom pot veure totes les dades de tothom.

  add: olcAccess
  olcAccess: to attrs=homePhone,mail by self write by * read
  olcAccess: to * by dn.exact='uid=anna,ou=usuaris,dc=edt,dc=org' write by * read

3. Tot usuari es pot modificar el seu mail. Tothom pot veure totes les dades de tothom.

  add: olcAccess
  olcAccess: to attrs=mail by self write by * read
  olcAccess: to * by * read

4. Tothom pot veure totes les dades de tothom, excepte els mail dels altres.

  add: olcAccess
  olcAccess: to attrs=mail by self write
  olcAccess: to * by * read

5. Tot usuari es pot modificar el seu propi password i tothom pot veure totes les dades
de tothom.

  add: olcAccess
  olcAccess: to attrs=userPassword by self write by * read
  olcAccess: to * by * read

6. Tot usuari es pot modificar el seu propi password i tothom pot veure totes les dades
de tothom, excepte els altres passwords.

  add: olcAccess
  olcAccess: to attrs=userPassword by self write
  olcAccess: to * by * read

7. Tot usuari es pot modificar el seu propi password i tot usuari només pot veure les
seves pròpies dades.
  
  add: olcAccess
  olcAccess: to attrs=userPassword by self write
  olcAccess: to * by self read

8. Tot usuari pot observar les seves pròpies dades i modificar el seu propi password,email i homephone. 
L’usuari “Anna Pou” pot modificar tots els atributs de tot sexcepte els passwords, que tampoc pot veure. 
L’usuari “Pere Pou” pot modificar els passwords de tothom.

  add: olcAccess
  olcAccess: to attrs=userPassword by dn.exact='uid=pere,ou=usuaris,dc=edt,dc=org' write by self write
  olAccess: to attrs=mail,homePhone by self write
  olcAccess: to * by dn.exact='uid=anna,ou=usuaris,dc=edt,dc=org' write
  olcAccess: to * by self read

´´
ldapmodify -D 'cn=Sysadmin,cn=config' -w syskey -b 'olcDatabase{1}mdb,cn=config' -f acl1.ldif 
ldapsearch -x -LLL -D 'cn=Sysadmin,cn=config' -w syskey -b 'olcDatabase={1}mdb,cn=config' olcAccess

