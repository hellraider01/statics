path = paste(getwd(),'/poblaciones/',sep="")

saveData <- function(frame){
  n <- length(list.files("./poblaciones/"))
  ne <- n + 1
  write.csv(frame, file = paste(path, ne, ".csv"),row.names=FALSE)
}

readData <- function(filename){
  return(read.csv(file = paste( path,filename, ".csv"), header = TRUE, sep = ","))
}