
setwd("C:/Users/Reyna/Documents/specdata/specdata")

directorio="C:/Users/Reyna/Documents/specdata"

corr<-function(directorio,horizonte=0){

    noel <- c()    
    n <- 1
    i<- 1
    id <- 1:332
    for(i in id){
        nol <- id[n]
        
        if (nol < 10){
            tello <- paste(directorio,"/specdata/", "0","0",nol,".csv",sep="")
            
        }else if (nol < 100){
            tello <- paste(directorio,"/specdata/", "0",nol,".csv",sep="")
        }else if (nol <332){
            tello <- paste(directorio,"/specdata/",nol,".csv",sep="")
        }
        gonza <- na.omit(read.csv(tello))
        go<-nrow(gonza) 
        n <- n+1
         if(go>horizonte){
            perro <- data.frame(gonza[,2])
            gato  <- data.frame(gonza[,3])
            correlacion <-cor(perro,gato)
            noel  <- c(noel,correlacion)   
        }
        
    }
    noel
}

corr(directorio,0)