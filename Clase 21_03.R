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







mayor <- function(x, n=10){               #el n hace que tome ese valor en automatico
  seleccionados <- x > n
  x [seleccionados]
}    

#dado que la fincion tiene n=10 al no colocar el argumento en un
mayor(1:20)
#es una funcion, si yo escribo los agumentos en ordend no es necesario
mayor (1:20, 15)
#si escribo los argumentos en desorden, si es necesario
mayor(n=15, x=1:20)



#Para sacar el promedio
promediocol <- function(x, quitarNA = TRUE){
  nc <-ncol(x)
  medias <- vector ("numeric", nc)
  for (i in 1:nc) {
    medias [i] <- mean(x [,i], na.re=quitarNA)
  }  
  medias
}
  
x <- matrix (1:100, 20 ,5)
promediocol(x)



#Evaluacion perezosa, te enseña el error y ahi se para
f <- function (a,b){
  a^2
}

f(2)


#Evaluacion perezosa
g <- function (a,b){
  print(a)
  print(b)
}

g(3)


miplot <- function(x,y,type= "l",...){
  plot(x,y,type =type, ...)
}

#el argumento ... indica que hay un numero variable de argumentos que usualmente son pasados a otras funciones
#tambien se ocupa cuando el numero de argumentos no puede ser conocido por anticipado

miplot(1:10,10:1)
plot(1:10, 10:1)

miplot (1:10, 10:1, main = "Mi Grafica")
plot (1:10, 10:1, main = "Mi Grafica")
miplot(1:10, 10:1, main = "Mi Grafica", perro ="123")
#aqui tenemos warnings que a diferencia de los errores, no detienen la

paste("Jose", "Alex", "Paz", "Arlet", "susana", "/")
paste("Jose", "Alex", "Paz", "Arlet", "susana", sep = "/")

#despues del argumento ... cualquier otro argumentodebe llevar su nombre
mipaste <-function(sep= " ", ...){
  paste(..., sep= sep)
}

#antes de ... no es necesario mencionar elq nombre del argumento
mipaste("/", "Jose", "Alex", "Paz", "Arlet", "susana")


#Tarea
install.packages("swirl")
library(swirl)
N
