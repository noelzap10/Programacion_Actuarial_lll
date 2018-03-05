#Lectura y escritura de datos

#dput y dget

#Creo el objeto
y <- data.frame(a=1, b = "a" )
y
#estudio la manera en que se guarda
dput(y)

#lo guardo en el disco duro
dput(y , file= "y.r" )

#gebero un nuevo objeto a partir de la info guardada
y2 <- dget(file= "y.r")


#Tarea almacenar en tu dusco duro la base de datos 
#mtcars en un archivo "carros.R" y posteriormente 
#gurdarlo en un data frame que se llame 
#Carros ( tu nombre)
