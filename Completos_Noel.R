setwd("C:/Users/Reyna/Documents/specdata/specdata")

directorio="C:/Users/Reyna/Documents/specdata"

completos<-function(directorio,id){
noel <- c()    
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
  gonza <- na.omit(read.csv(tello))
  go<-nrow(gonza) 
  noel<-c(noel,go)
    n <- n+1
}
data.frame(noel)
}

completos(directorio,1:10)