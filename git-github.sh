#!/bin/bash
#-------------------------------------------
# evitamos que se ejecute el guion:
cat <<EOF
Abre el archivo $0 y sigue las instrucciones para poner en práctica lo explicado sobre git y Github
EOF
exit 0
#-------------------------------------------

# Empieza aquí:
# - Regístrate, si no lo has hecho ya, en Github <https://github.com> (o en
#   Gitlab o Bitbucket)
# - Activa la verificación en dos pasos (opcional pero recomendable)
# - Crea un nuevo repositorio <https://github.com/new> (inícialo con un README)

# - Crea una copia local en tu ordenador
git clone https://github.com/tu_usuario/tu_repo.git
cd tu_repo

# - Crea y modifica archivos
echo "Hello world" > test.txt

echo "Repositorio de prueba. Modificaciones por $(whoami)" >> README.md

# - Añade los cambios a un nuevo commit
git add test.txt README.md
git commit "Pequeñas modificaciones

Añade un nuevo archivo y una aclaración en el Readme."

# - Manda los nuevos cambios al remoto
git push origin master
