setwd("~/GitHub/Programacion_Actuarial_lll")


#Extraccion de valores faltantes
airquality[1:6,]  
complete.cases(airquality[1:6,])
complete.cases(airquality[1:10,])
completos <- complete.cases(airquality)

airquality[completos,]
#Al quedarse en blanco son todas las columnas
data <- arquality[Completos,]
data [1:6,] 
#al hacer una extraccion desde un vector de logicos me quedo solo con los valores

#Algunas operaciones 
x <- 1:4 ; y <- 6:9   
x + y
x > 2
x >= 2
y == 8 #Para ver la igualdad
x*y

#Operaciones con Matrices
x <- matrix(1:4, 2, 2) ; y <- matrix(rep(10,4), 2, 2)
x*y #elemento con elemento
x/y

x %*% y #Hace la multiplicacion correcta de matices 

y %*% x # La operacion es diferente en matrices


#Rstructura de control if-else
x <- 3
if (x > 5){
  "x es mayor a 5"
}else {
  
"x es menor a 5 "
}


if (x <5){
  "x es menor a 5"
  
}else if (x<=10){
  
  "entre 5 y 10 "
  
} else{
  "Mayor a 10"
}



if (x >3) {
  y <- 10
} else {
  y <-0
}
y

y <- if (x>3) {
  10
} else {
  0
}
y


#Ahora ciclo for
# La forma de trabajar de for en Rstudio es similar al for each del visual Basic

for (i in 1:10)
  print (i)

for (i in c("a" , "b" , "c")){    #Recorre los valores en secuencia
  print (i)
}

x <- c("a" , "b" , "c" , "d")
for (i in 1:4){
  print (x[i])
}

for (i in seq_along(x)){
  print (x[i])
}

for (letra in x){
  print(letra)
}

for(i in 1:4) print (x [i])

x <- matrix(1:6,2,3)
for (i in seq_len(nrow(x))){
  for (j in seq_len(ncol(x))){
    print(x[i,j])
  }
}

#Ciclo while
#Tener cuidado con while porque son potencialmente infinitos

count <- 0
while (count <10){
  print(count)
  count <- count + 1
}

#Ejemplo de while
#se evaluan de izquierda a derecha
set.seed(1) #semillas
z <- 5
while (z>=3 && z<=10){
  print(z)
  moneda <- rbinom(1,1,0.5)  #Numero de aciertos en una cantidad de intentos
  if (moneda == 1){   #Caminata aleatoria
     z <- z+1
  } else {
     z <- z-1
  }
}



z <- 5
contador <- 0
while (z>=3 && z<=10){
  print(z)
  moneda <- rbinom(1,1,0.5)  #Numero de aciertos en una cantidad de intentos
  if (moneda == 1){   #Caminata aleatoria
    z <- z+1
  } else {
    z <- z-1
  }
  contador <- contador + 1
}
print("Se realizaron"); print(contador) ; print ("pasos")


set.seed(1) #semillas
z <- 5
x <- vector("numeric")
while (z>=3 && z<=10){
  print(z)
  moneda <- rbinom(1,1,0.5)  #Numero de aciertos en una cantidad de intentos
  x <- c(x,z)
  if (moneda == 1){   #Caminata aleatoria
    z <- z+1
  } else {
    z <- z-1
  }
}
print("Se realizaron"); print(contador) ; print ("pasos"); print (x)
plot (x, type ="b")   #Para graficar y que los puntos esten unidos




con1 <- 0
con2 <- 0
set.seed(1) #semillas
z <- 5
x <- vector("numeric")
while (z>=3 && z<=10){
  print(z)
  moneda <- rbinom(1,1,0.5)  #Numero de aciertos en una cantidad de intentos
  x <- c(x,z)
  if (moneda == 1){   #Caminata aleatoria
    z <- z+1
  } else {
    z <- z-1
  }
}
print("Se realizaron"); print(contador) ; print ("pasos"); print (x)
plot (x, type ="b")   #Para graficar y que los puntos esten unidos

if (z<3){
  con1 <- con1 + 1
} else if(z> 10){
  con2 <- con 2 + 1
}
}
print(con1); print (con2)
  
  
  


