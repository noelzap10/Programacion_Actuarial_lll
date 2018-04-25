
#Warning messange
log(-1)

imprimeMSJ <- function(x){
    if(x>0)
        print("x es mayor que 0")
    else
        print("x es menor o igual a 0")
    invisible(x)
}

imprimeMSJ(1)
imprimeMSJ(NA)


imprimeMSJ <- function(x){
    if(is.na(x))
        print("x es Valor faltante")
    else if (x>0)
    print("x es mayor que 0")
    else
        print("x es menor o igual a 0")
    invisible(x)
}


imprimeMSJ(1)
imprimeMSJ(NA)

mean (x)
traceback()
lm(y-x)
traceback()


debug(lm)
lm(y ~ x)
undebug(lm) #apaga la revision

options(error=recover)
read.csv("El amor es utopia")
#no esxiste el archivo

options(error = stop)



str(lm)
str(ls)
x <- rnorm(100)
str(x)
summary(x)

f <- gl(40,10) #factor de 40 niveles 
str(f)
summary(f)

str(airquality)
summary(airquality)

m <- matrix(rnorm(100),10,10)
summary(m)


s <- split(airquality,airquality$Month)
str(s)

#Generar numero aleatorios
x <- rnorm(10) # media 0 y desviacion 1
x
y <- rnorm(10, 50, 5)
y
summary(x)
summary(y)



