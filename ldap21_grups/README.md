# ldap21_grups

Crear un schema amb:

Crear una nova imatge ldap: edtasixm06/ldap21:grups
● modificar el fitxer edt.org.ldif per afegir una ou grups.
● definir els següents grups:
○ alumnes(600), professors(601), 1asix(610), 2asix(611), wheel(10),
1wiam(612), 2wiam(613), 1hiaw(614).

● verificar el llistat dels usuaris i grups i la coherència de dades entre els usuaris
que ja teníem i els nous grups creats.

docker run --rm --name ldap.edt.org -it --network  2hisix -p 389:389  balenabalena/ldap21:grups /bin/bash

