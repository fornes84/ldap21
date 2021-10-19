# ldap21_practica

Crear un schema amb:

-Un nou objecte STRUCTURAL
-Un nou objecte AUXILIARY
-Cada objecte ha de tenir almenys 3 nous atributs.
-Heu d’utilitzar almenys els atributes de tipus boolean, foto (imatge jpeg) i binary per contenir documents pdf.
-Crear una nova ou anomenada practica.
-Crear almenys 3 entitats noves dins de ou=practica que siguin dels objectClass definits en l’schema. 
-Assegurar-se de omplir amb dades reals la foto i el pdf.
-Visualitzeu amb phpldapadmin les dades, observeu l’schema i verifiqueu la foto i el pdf.

´´´
Detach: Observeu que s'insereixen les dades amb una ordre docker exec (per exemple)
docker run --rm --name ldap.edt.org -h ldap.edt.org --net 2hisix -p 389:389 -d edtasixm06/ldap21:practica 
docker exec -it ldap.edt.org ldapadd -vx -h localhost -D 'cn=Manager,dc=edt,dc=org' -w secret -f actors.ldif

