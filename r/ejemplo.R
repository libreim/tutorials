# Limpieza del entorno
rm(ls())

##########################################
# Carga de paquetes
##########################################
load.my.packages <- function(){
  pkgs = c("foreign", "data.table", "class")
  to.install <- pkgs[ ! pkgs %in% installed.packages() ]
  
  if ( length(to.install) > 0 )
    install.packages( to.install, dependencies = TRUE )
  
  sapply(pkgs, require, character.only=TRUE)
}

load.my.packages()

##########################################
# Carga del RData
##########################################
load(file = "./ejemplo.RData")

##########################################
# Asignación
##########################################
var <- 5
var = 5
5 -> var


##########################################
# Tipos de datos
##########################################
## Vectores
vector <- c(1,2,3,4,5)
vector2 <- 10:1
vector3 <- seq(1,20,2)
vector[1]

sum(vector)
mean(vector)
sd(vector)
prod(vector)

## Listas
lista <- list(a=10, b="ejemplo", c=c(1,3,5))
lista$a
lista[[1]]

lista$a <- 7
lista$c[2]
# Devuelve NULL
lista$d


## Data frames
datos <- list(names=c("a","b","c","d","e","f","g","h","i","j"), nums=1:10)
df <- data.frame(datos)

df$names
df$nums
df$nums <- sample(1:10)

print(df)

##########################################
# Generación de aleatorios
##########################################
set.seed(1234)
u <- sample(0:1, 20, replace=TRUE)
v <- sample(c(T,F), 20, replace=TRUE)


##########################################
# Funciones
##########################################

mult <- function(a,b){
  a*b
}

mult(2,5)


##########################################
# Bucles, sapplys, lapplys
##########################################
sapply(vector, function(x){ x+2 })

paired <- lapply(1:10, function(x){
  sample(1:10, size=2)
})

vector4 <- c()
for(i in 1:20){
  vector4 <- c(vector4,i)
}


