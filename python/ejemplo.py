# Ejemplo python

#############################
# Carga de librerias
#############################
import math as m
from random import shuffle

#############################
# Asignaciones
#############################
var1 = "hola"
var2 = 7
var3 = var2
var1 = "otra cosa"

#############################
# Tipos de datos
#############################

# Numeros
n1 = 3
n2 = 3.23

# Booleanos
b1 = 3 != 2
b2 = False

# Strings
var = "mensaje"

# Listas
lis = [1, 2, 3, "cosa"]
lis2 = lis[0:1]
lis3 = [x ** 2 for x in range(3)]

# Diccionarios
dic = {"tomate":"fresco", "lechuga":"mala"}
dic["nuevo"] = "cosa"
print(dic["nuevo"])

# Conjuntos
set = {"huevos", "leche", "mantequilla"}

# Tuplas
tup = (3, 2)
trip = (3, "cosa", 3.2)


#############################
## Bucles, control
#############################

arr = [1, 2, 3]
for item in arr:
    print(item)
for i in range(len(arr)):
    print(arr[i])

i = 0
while i < len(arr):
    print(arr[i])
    i += 1

if 0 != 0:
    print("Mates rotas")
elif 0 == 0:
    print("Todo bien de momento")
else:
    print("Imposible de llegar!!!")

#############################
## Funciones
#############################

def nueva_func(par1, par2):
    return par1 + par2

print(nueva_func(1, 2))
