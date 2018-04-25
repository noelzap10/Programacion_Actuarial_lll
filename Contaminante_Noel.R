getwd() #Nos dice el directorio de trabajo
setwd("C:/Users/Reyna/Documents/specdata/specdata")

directorio="C:/Users/Reyna/Documents/specdata"
mediacontaminante <- function(directorio , contaminante= "sulfate", id= 1:332){    
    
    if (contaminante== "sulfate") { 
        cont= 2   
    } else if(contaminante == "nitrate"){
        cont=3
    } 
    
    suma <- 0
    noel <- 0    
    n <- 1
    i<- 1
    for(i in id){
        nol <- id[n]
        
        if (nol < 10){
            tello <- paste(directorio,"/specdata/", "0","0",nol,".csv",sep="")
            
        }else if (nol < 100){
            tello <- paste(directorio,"/specdata/", "0",nol,".csv",sep="")
        }else if (nol <332){
            tello <- paste(directorio,"/specdata/",nol,".csv",sep="")
        }
        gonza <- read.csv(tello)
        noel <- length(na.omit(gonza[,cont]))+noel #Cuentas cuantos hay
        suma <- sum(gonza[,cont],na.rm=TRUE)+suma
        n <- n+1
    }
    
    gonza <- suma/noel
    gonza   
    
    
}

mediacontaminante(directorio,"sulfate",1:10)





    
    
