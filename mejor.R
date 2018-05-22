getwd()
setwd("C:/Users/Reyna/Documents/Calidad de Hospitales - data")

mejor <- function(estado,resultado){
    
    tello <- read.csv ("outcome-of-care-measures.csv", colClasses = "character")
    
    if (!((resultado=="ataque")|(resultado=="falla")|(resultado=="neumonia"))){
        stop("resultado invalido")
    }
    
    if (resultado== "ataque"){
        cont=11
    }else if (resultado == "falla"){
        cont= 17
    }else if (resultado == "neumonia"){
        cont= 23
    }
    
    x <- c(tello[,2])
    y <- c(tello[,7])
    z <- c(tello[,17])
    
    dog <- tello[tello$State == estado,]
    w <- nrow(tello)
    noel <- c()
    
    for (i in 1:w) {
        
        if (tello[i,7]==estado){
            
            v <- tello[i,17]
            noel<- c(noel,v)
            dog <- tello[tello$State == estado,]
            cat <- dog[,cont]
            pio <- suppressWarnings(as.numeric(cat))
            fish <- which.min(pio)
            caty <- dog[fish,]
            natz <- caty[,2]
            
        }
    }
    
    natz   
    
}

mejor("TX","ataque")
mejor("TX","falla")
mejor("MD","ataque")
mejor("MD","neumonia")
