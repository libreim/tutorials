#!/bin/bash
# El comentario de la primera línea es una indicación a tu terminal del
# intérprete que debe usar para ejecutar este archivo. Otros ejemplos pueden ser:
#   #!/bin/zsh
#   #!/usr/bin/env python
#   #!/usr/bin/env ruby

# Muestra un mensaje por pantalla. Los mensajes multilínea se pueden delimitar
# con <<MARCA y terminarlos con MARCA
cat <<EOF
Es mejor que no ejecutes este guion entero de una vez. Abre el archivo $0 y ve probando paso a paso. Saliendo...
EOF
# aborta el script
exit 0

#-------------------------------------------------------------------------------
# 1. Algunas utilidades básicas para reconocer el estado de la terminal/sistema
#-------------------------------------------------------------------------------
# muestra la fecha y hora
date
# muestra un calendario
cal
# indica el nombre del usuario actual
whoami
# indica el directorio actual
pwd
# informa sobre el tiempo de uso y la carga del ordenador
uptime
# aporta datos sobre el kernel y el sistema operativo
uname -a
# muestra información detallada de la CPU
cat /proc/cpuinfo
# muestra información detallada de la memoria (RAM)
cat /proc/meminfo

#-------------------------------------------------------------------------------
# 2. Gestión de archivos y directorios
#-------------------------------------------------------------------------------
# lista contenidos del directorio actual
ls
ls -alh
# crea un nuevo directorio
mkdir test-libreim
# cambia de directorio
cd test-libreim
# crea un nuevo archivo
touch archivo-regular
# escribe al archivo
echo "Algo de contenido" > archivo-regular
# lee el contenido
cat archivo-regular
# renombra/mueve el archivo
mv archivo-regular nuevo-nombre
# vuelve al directorio superior
cd ..
# borra el directorio de test y todo su contenido
rm -rf test-libreim

#-------------------------------------------------------------------------------
# 3. Gestión de procesos
#-------------------------------------------------------------------------------

# En una terminal bash, Ctrl-C envía una señal de terminación al proceso activo,
# Ctrl-Z lo congela

# monitor de procesos
top
# & lanza un proceso sin bloquear la terminal
glxgears &
# descubre el PID de un proceso
pidof glxgears
# termina un proceso (killall termina con todos los que tengan el mismo nombre)
kill $(pidof glxgears)
killall glxgears
# mata un proceso
kill -9 $(pidof glxgears)
killall -9 glxgears
# encuentra el/los binarios de un programa
which -a ruby

#-------------------------------------------------------------------------------
# 4. Alias y funciones
#-------------------------------------------------------------------------------
# establece un alias que expande al comando que sea asignado
alias accio='find / -name'
# una función:
welcome() {
  local user=$(whoami)
  local computer=$(hostname)
  echo "Hola $user! Bienvenido a $computer"
}

######## RETO 4.1 ##############################################################
# Averigua para qué sirve el archivo oculto ~/.bashrc
# Añade algún alias que creas útil y que te ahorre tiempo al usar la terminal
# Comprueba su funcionamiento
################################################################################

#-------------------------------------------------------------------------------
# 5. Gestión de paquetes
#-------------------------------------------------------------------------------
# En derivadas de Debian (por ejemplo Ubuntu) se utiliza apt:
sudo apt-get update
sudo apt-get upgrade
sudo apt-get dist-upgrade
sudo apt-get install cmatrix
# O eliminar:
sudo apt-get remove nombre_paquete
sudo apt-get purge nombre_paquete
# En Arch Linux y sus derivadas utilizamos pacman:
sudo pacman -Syy cmatrix
sudo pacman -S nombre_paquete
# O eliminar:
sudo pacman -R nombre-paquete
sudo pacman -Rs nombre_paquete
