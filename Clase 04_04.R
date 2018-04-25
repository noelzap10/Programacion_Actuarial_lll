#Funciones
setwd("~/GitHub/Programacion_Actuarial_lll")


suma2 <- function(x,y){
    x + y
}
suma2 (1,3)


mayor10 <- function(x){
    seleccionados <- x>10
    x[seleccionados]
}

mayor10(1:20)



Lapply
# x es el objeto al que le voy aplicar la funcion
#FUN es la funcion
# || se puede leer como o

#Lapply ayuda a sacar el promedio
x <- list(a=1 : 5, b=rnorm(10000))
x
lapply(x , mean)


x <- list( a=1:5, b=rnorm(10), c=rnorm(10,1), d=rnorm(10,2))
lapply(x,mean)

x <- 1:4
lapply(x, runif)  # runif de 1 genera un numero aleatorio, runif de 2 genera dos numeros aleatorios y asi sucesivamente

x <- 1:4
lapply(x, runif, max=15, min=5)  #ereda que el valor maximo para runif es 15 y elminimo es de 5


#Sapply
#el resultado lo entrega como un vector
x <- list( a=1:5, b=rnorm(10), c=rnorm(10,3), d=rnorm(10,5))
lapply(x,mean)
sapply(x, mean)

#Apply

str(apply)
x <- matrix(rnorm(200), 20,10)
apply(x, 2, mean)  #margen 2 en columna
apply(x, 1, sum)   #margen 1 es fila


x<- matrix(rnorm(200), 20, 10)
apply (x, 1, quantile, probs= c(0.25, 0.75))
#da 20 resultados porque lo hizo sobre las filas


a <- array(rnorm (2*2*10), c(2,2,10))
apply(a,c(1,2),mean)
rowMeans(a, dims=2) #Trabaja con el margen 1 y con el 2


#Mapply

list(rep(1,4), rep(2,3), rep(3,2), rep(4,1))
mapply(rep, 1:4, 4:1)
