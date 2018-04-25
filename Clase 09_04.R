#Vectorizar una funcion
noise <- function(n,mean,sd){
    rnorm(n,mean,sd)
}

noise(5,1,2)

noise(1:5,1:5,2)

mapply(noise,1:5,1:5,2) #genera una y otra vez

str(tapply)
#x es un vector, index es un factor o una lista de gactores, fun es una funcion a aplicar,....,simplify simplifica el redultado

x <- c(rnorm(10), runif(10), rnorm(10,1))

f <- gl(3,10) #voy a generar 3 niveles y los repetire 10 veces
f

tapply(x,f,mean) #es una tabla

tapply(x,f,mean,simplify=F)#deben estar del mismo tamaño para simplificar

str(split) #split es, si tengo un tabla de valores, voy a reconocerd los qie tienen algo en comun

split(x,f)

lapply(split(x,f),mean)

#Consola con Nacho
library(datasets)
head(airquality) #el head es para que muestre 6 filas

split(airquality, airquality$Month)


sapply(split(airquality, airquality$Month), colMeans,na.rm=True)


x <- rnorm(10)
f1 <- gl(2,5)
f2 <- gl(5,2)
f1
f2
interaction(f1,f2)

x
str(split(x,list ( f1, f2)))

#Practica
head(mtcars)
data.frame(mtcars)
split(mtcars,mtcars$cyl)
sapply(split(mtcars,mtcars$cyl), colMeans,na.rm=TRUE)

head(mtcars)
sapply(split(mtcars$hp,mtcars$cyl), mean) #Se conclute que entre mas cilindros mayor caballos de furza

sapply(split(mtcars$mpg,mtcars$cyl), mean) # nos diece que 1 galon nos alcanza 1 galon para recorrer 26 en el 4
