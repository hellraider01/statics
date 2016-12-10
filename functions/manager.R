path = paste(getwd(),'/poblaciones/',sep="")

saveData <- function(frame){
  n <- length(list.files("./poblaciones/"))
  ne <- n + 1
  write.csv(frame, file = paste(path, ne, ".csv"),row.names=FALSE)
}

readData <- function(filename){
  read.csv(file, header = TRUE, sep = ",")
}

simularTirada <- function(dado=NULL, numDados=NULL, guardas=NULL){
  if(dado!= NULL){
    
  }
}