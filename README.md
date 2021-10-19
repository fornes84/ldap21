# ldap21

REPOSITORI GENERAL QUE CONTE:

LDAP21:BASE servidor amb dues bases de dades, dc=edt,dc=org i també dc=m06,dc=cat

LDAP21:PROVA VAM FER PROVES D'INSERCIÓ BORRAT i MODIFICACIO D'ENTITATS.

LDAP21:SCHEMA

LDAP21:EDITAT  servidor ldap que implementa un schema personalitzat. Per cada schema s'han definit dades a inserir en la base de dades. S'han fet tres exemples de esquemes de 'fulboliestes':

    A) objecte structural derivat de inetOrgPerson
    B) objecte structural derivat de tot
    C) objecte auxiliar (implementat acompanyant els usuaris actuals inetOrgPerson i posixAccount)

LDAP21:PRACTICA
Un nou objecte STRUCTURAL -Un nou objecte AUXILIARY -Cada objecte ha de tenir almenys 3 nous atributs. -Heu d’utilitzar almenys els atributes de tipus boolean, foto (imatge jpeg) i binary per contenir documents pdf. -Crear una nova ou anomenada practica. -Crear almenys 3 entitats noves dins de ou=practica que siguin dels objectClass definits en l’schema. -Assegurar-se de omplir amb dades reals la foto i el pdf. -Visualitzeu amb phpldapadmin les dades, observeu l’schema i verifiqueu la foto i el pdf.

