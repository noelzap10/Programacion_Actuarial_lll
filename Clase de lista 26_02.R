# Listas
x <- list(1, "a", TRUE, 3 + 2i, 5L, 1:50)
x

#Todos los elementos de una lista mantiene la clase original
m <- matrix(nrow = 2, ncol=3)
m
m <- matrix (NA, 2,3)

dim(m)
attributes(m)

#Como llenar una matriz
m <- matrix( data=1:6, nrow=2, ncol=3)
m
m <- matrix (1:6, 2, 3)
m

#La manera automatica de llenarse fue columna por columna 
#si yo quisiera que se llenara fila por fila, seria:
m <- matrix(data=1:6, nrow=2, ncol=3, byrow= TRUE)
m
m <- matrix(1:6, 2, 3, T)
m

# Una manera alternativa de crear una matrix es desde un vector y modificar sus dimensiones
m <- 1:10
m
dim(m) <- c(2,5)
m

# otra forma de crear una matriz es uniendo diferentes vectores
x <- 1:3
y <- 10:12

#cbind, une columnas
cbind(x,y)
#rbind, une filas
rbind(x,y)

#FACTORES
x <- factor (c("si", "si", "no", "no", "si"))
x

x <- factor(c("azul", "verde", "verde", "azul", "rojo"))
x

table(x)
unclass(x)
#Nome salio esta parte
x <-factor(c("Azul", "Verde", "Verde", "Azul", "Rojo")), levels= c("Rojo","Amarillo", "Verde","Naranja")
x
------
  
# Valores faltantes
x <- c(1,2,NA,10,3)
is.na(x)        #valor faltante detectado
is.nan(x)       #valor no numerico que no es faltante

y <- c(1,2,NA,10,3)
is.na(y)        #valor faltante detectado
is.nan(y)       #valor no numerico que no es faltante

#Data Frame 
x <- data.frame(foo = 1:4,bar= c(T,T,F,F))
x
nrow(x)
ncol(x)


x <- 1:3
names(x)

names(x) <- c ("foo" ,"bar", "norf") #asi se le puede asignar nombres a las columnas
x 
names(x)

x <- list (a=1 , b=2 , c=3 )
x

m <- matrix(1:4 , nrow=2 , ncol=2)
m
dimnames(m) <- list (c("a" , "b"), c("c", "d"))
m










