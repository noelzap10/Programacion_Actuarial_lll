#Dump y Source
#Crean las instrucciones necesarias para construir un objeto
#Programacion_Actuarial_lll

setwd("~/GitHub/Programacion_Actuarial_lll/y.R")
x <- "Programacion Actuarial III"
Y <- data.frame (a=1 , b="a")
dump (c("x", "y"), file ="data.R")

rm(x,y)
x
y
source("Data.R")
x
y

#dump guarada la receta
#sorce has la receta
#dump y sorce trabajan con las instrucciones de codigo que permitirawn volver a construir un objeto en lugar de obtenerlo desde una ubicacion guarada


#conexiones
Con <- url("https://www.fcfm.buap.mx/")
x <- readLines(Con , 7)
x
x [7]<- "\t<title>FCFM: Estariamos mejor con otra direccion de la facultad</title>"
#writeLines( redLines(Con), "FCFM.txt")
writeLines(x , "FCFM.html")


#operadores para extraer subconjuntos
#[ 
#[[
#$

#Creamos un vectpr
x <- c( "a" , "b" , "c" , "c" , "d" , "e" )
x
#veamos el vector
x
#-[1] "a" "b" "c" "c" "d" "e"
# extraemos elementos con []
x[1]
#-[1] "a"
x[2]
#-[1] "b"
#tambien podemos extraer una secuencia de elementos
x[1:4]
#es posible extraer los elemntos que cumplen alguna condicion
x > "b"
x[x > "b"]
#De una manera similar se puede obtener un vector logico
u <- x== "c"
u
x[u] 
x[5-3] 


#Creamos una lista
x <- list(foo=1:4 , bar =0.6 )
x
x[1]    #toma una lista, consrva la clases del objeto de donde lo extrae, contiene una lista con el vector de la secuencia
x[[1]]  # conservar la naturaleza del objeto extraido, conserva la clses del objeto extraido, es el vector de la secuencia de numeros
x$foo   #el resultado fue un vector como el del doble corchete
x["bar"] 
x [["bar"]] 

#Extraccion 
x <- list(foo=1 , bar= 0.6 , baz= "Hola")
x
x [c (1,3)]    #Extrae elementos no secuenciales 1 si, 2 no, 3 si
x [[c(1,3)]]   #Extrae secuencias desde los elemnetos extraidos
#Primero extrae el 1er elemto y de ahi extare la 3era posicion

name <- "baz"
x[name]
x [[name]]
x$name
#so yo quiero extraer con el $, es necesarioescribir

#Se puede estraer elementos de los elementos extraidos
x<- list(a= list(10 , 12 , 14), b= list(3.14 , 2.81))
x [[c(1,3)]]  
x [[1]][[3]]
x [[c (2,1)]]
#Todos son vectores

x <- matrix (1:6 , 2 , 3)
x
x[1,2]
x[2,1]
x [1,]
x[ , 2]

#el resultado es un vector
x[1,2]
# con drop= FALSE, se mentiene la dimension y
#el resultado sera una matriz.
x[1,2, drop=FALSE]
#si usamos drop= FALSE, el resultado sera una matriz 
x [1, , drop=FALSE]

x <- list (aardvark = 1:5)
x$a
x[["a"]]
x [["a" , exact = FALSE]]





