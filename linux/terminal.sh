#!/bin/bash
# El comentario de la primera línea es una indicación a tu terminal del
# intérprete que debe usar para ejecutar este archivo. Otros ejemplos pueden ser:
#   #!/bin/zsh
#   #!/usr/bin/env python
#   #!/usr/bin/env ruby

# Muestra un mensaje por pantalla. Los mensajes multilínea se pueden delimitar
# con <<MARCA y terminarlos con MARCA
cat <<EOF
Es mejor que no ejecutes este guion entero de una vez.
Abre el archivo $0 y ve probando paso a paso.

Saliendo...
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
# abre un editor simple en terminal
nano archivo-regular
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
  # declara variables locales
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
# 5.a. Gestión de paquetes en Ubuntu/Linux Mint/Elementary
#-------------------------------------------------------------------------------
# actualiza la base de datos de paquetes
sudo apt update
# actualiza los paquetes del sistema
sudo apt upgrade
# actualiza la versión del sistema
sudo apt dist-upgrade
# instala un paquete
sudo apt install firefox
# elimina un paquete
sudo apt remove firefox
sudo apt purge firefox

#-------------------------------------------------------------------------------
# 5.b. Gestión de paquetes en Arch Linux
#-------------------------------------------------------------------------------
# actualiza los paquetes del sistema
sudo pacman -Syu
# actualiza la base de datos e instala un paquete
sudo pacman -Sy firefox
# elimina un paquete
sudo pacman -Rc firefox
