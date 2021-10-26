# ldap21

REPOSITORI GENERAL QUE CONTE:

LDAP21:BASE Servidor LDAP amb dues bases de dades, dc=edt,dc=org i també dc=m06,dc=cat

LDAP21:PROVA VAM FER PROVES D'INSERCIÓ BORRAT i MODIFICACIO D'ENTITATS.

LDAP21:SCHEMA  S'han fet tres exemples d'esquemes de 'fulbolistes'i s'han creat enitats dins de fitxers .ldif per insertar.

LDAP21:EDITAT  servidor ldap que implementa un schema personalitzat. Per cada schema s'han definit dades a inserir en la base de dades.

    A) objecte structural derivat de inetOrgPerson
    B) objecte structural derivat de TOP
    C) objecte auxiliar (implementat acompanyant els usuaris actuals inetOrgPerson i posixAccount)

LDAP21:PRACTICA
Un nou objecte STRUCTURAL -Un nou objecte AUXILIARY -Cada objecte ha de tenir almenys 3 nous atributs. -Heu d’utilitzar almenys els atributes de tipus boolean, foto (imatge jpeg) i binary per contenir documents pdf. -Crear una nova ou anomenada practica. -Crear almenys 3 entitats noves dins de ou=practica que siguin dels objectClass definits en l’schema. -Assegurar-se de omplir amb dades reals la foto i el pdf. -Visualitzeu amb phpldapadmin les dades, observeu l’schema i verifiqueu la foto i el pdf.

LDAP21:GRUPS
● modificar el fitxer edt.org.ldif per afegir un ou grups.
● definir els següents grups:
○ alumnes(600), professors(601), 1asix(610), 2asix(611), wheel(10),
1wiam(612), 2wiam(613), 1hiaw(614).
● verificar el llistat dels usuaris i grups i la coherència de dades entre els usuaris
que ja teníem i els nous grups creats.

LDAP21:ACL
Creem una bbdd simple.
Modifiquem els permisos ACL dels usuaris per accedir i/o modificar sobre la bbdd, afegim arxius acl.ldif per fer les proves i al README afegim les ordres a executarº.


exercicisACL: Exercicis de permisos proposats del pdf
