



z <- 5
x <- vector("numeric")
contador <- 0
no1 <- 0
no2 <- 0

for (i in 1:10){
  
while (z>=3 && z<=10){
  moneda <- rbinom(1,1,0.5)  #Numero de aciertos en una cantidad de intentos
  x <- c(x,z)
  if (moneda == 1){   #Caminata aleatoria
    z <- z+1
  } else {
    z <- z-1
  }
  contador <- contador + 1
}
print("Se realizaron"); print(contador) ; print ("pasos"); print (x)
plot (x, type ="b")   #Para graficar y que los puntos esten unidos



if (z<2){
  no1 <- no1 + 1
} else if(z> 10){
  no2 <- no2 + 1
}
}

print(no1); print (no2)








contador <- 0
no1 <- 0
no2 <- 0
tries <- 10

for (i in 1:tries){
  z <- 5
  x <- vector("numeric")
  
  while (z>=3 && z<=10){
    moneda <- rbinom(1,1,0.5)  #Numero de aciertos en una cantidad de intentos
    x <- c(x,z)
    if (moneda == 1){   #Caminata aleatoria
      z <- z+1
    } else {
      z <- z-1
    }
    contador <- contador + 1
  }
  #print("Se realizaron"); print(contador) ; print ("pasos"); print (x)
  #plot (x, type ="b")   #Para graficar y que los puntos esten unidos
  
  
  if (z<3){
    no1 <- no1 + 1
  } else if(z> 10){
    no2 <- no2 + 1
  }
}

paste("En", tries ," intentos, se escapa", no1 ," veces por abajo y", no2 ," veces por arriba")
paste("La probabilidad de salir por abajo es ", no1/tries)

#repeat and next


i <- 0
repeat{
  i <- i+1
  
}


