add <- function(x,y){
        x + y
}

above10 <- function(x){
          use<-x>10
          x[use]
}

above <- function(x,n){
        use<- x>n
        x[use]
}

##u can specify default values for n (x, n=10) for the above10 function

columnmeans<-function(y){
            nc <- ncol(y)
            means <- numeric(nc)
            for (i in 1:nc){
              means[i]<-mean(y[,i], na.rm=TRUE)
            }
            means
}

columnmean<-function(y){
  nc <- ncol(y)
  means <- numeric(nc)
  for (i in 1:nc){
    means[i]<-mean(y[,i], na.rm=FALSE)
  }
  means
}

rowmean <- function(x){
          nr = nrow(x)
          means = numeric(nr)
          for (i in 1:nr){
            means[i] = mean(x[i,], na.rm = TRUE)
          }
          means
}

read.csv("./specdata/001.csv") ## read a file in subdirectory in ur WD
read.csv("file:///C:/Users/timatme/R/datasciencecoursera/specdata/001.csv")

f <- toString(id)

pollutantmean <- function(directory, pollutant, id=1:332){
      f <- toString(id)  
      matx <-read.csv(paste("./",directory,"/",f,".csv", sep=""))
      if (pollutant == "sulfate"){ 
          r <- matx[,2]
      }
      else if (pollutant == "nitrate"){
          r <- matx[,3]  
      }
      else {
          pass
      }
      pollutantmean <- mean(r, na.rm=TRUE)
}

sulphite <-matx[,2]
