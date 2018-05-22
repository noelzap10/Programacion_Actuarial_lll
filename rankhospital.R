getwd()
setwd("C:/Users/Reyna/Documents/Calidad de Hospitales - data")

rankhospital <- function(estado, resultado, num ){
    
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
    
    
    if (num == "mejor"){
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
        
    }else if (num == "peor"){
        for (i in 1:w) {
            
            if (tello[i,7]==estado){
                
                v <- tello[i,17]
                noel<- c(noel,v)
                dog <- tello[tello$State == estado,]
                cat <- dog[,cont]
                pio <- suppressWarnings(as.numeric(cat))
                fish <- which.max(pio)
                caty <- dog[fish,]
                natz <- caty[,2]
                
            }
        }
        
        natz
        
    }else {
        for (i in 1:w) {
            
            if (tello[i,7]==estado){
                
                v <- tello[i,17]
                noel<- c(noel,v)
                dog <- tello[tello$State == estado,]
                cat <- dog[order(dog$Hospital.Name, na.last = NA),]
                cat2 <- cat[,cont]
                pio <- suppressWarnings(as.numeric(cat2))
                fish <- order(pio)
                caty <- fish[num]
                natz<- cat[caty,2]
                
                
            }
        }
        
        natz

           
    }
    
    
}

rankhospital("MD","ataque","peor")
rankhospital("TX", "falla", 4) 

