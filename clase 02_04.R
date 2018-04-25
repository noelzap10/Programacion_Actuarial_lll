#Scoping Rules
setwd("~/GitHub/Programacion_Actuarial_lll")
^

lm
lm <- function(x){x*x}
lm
rm(lm)
lm

search() #te muestra la lista de busqueda
library(swirl)
search()

hacer.potencia <- function(n) {
  potencia <- function(x) {
    x^n
  }
  potencia
}

cubica <- hacer.potencia(3)
cubica (3)

cuadrada <- hacer.potencia(2)
cuadrada(2)
                           

ls (evironment(cubica))
get("n", environment(cubica))

ls (evironment(cuadrada))
get("n", environment(cuadrada))



y <- 10

f <- function(x) {
  y <- 2
  y^2 + g(x)
}

g <- function (x){
  x*y
}


f(3)

#Estandares de escritura


#Fechas y Tiempo
x <- as.Date("1970-01-01")
x
unclass(x)
unclass(as.Date("1970-01-02"))

#MaryPaz 19/06/1998
inicio <- unclass(as.Date("1998-06-19"))
final <- unclass(as.Date("2018-04-02"))
final-inicio #dias vividos


weekdays(as.Date("1998-11-07"))
a <- as.POSIXct("1998-11-07")
b <- as.POSIXlt("1998-11-07")

