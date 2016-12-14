path = paste(getwd(),'/poblaciones/',sep = "")

saveData <- function(frame, folder){
  if (dir.exists(path) == FALSE ) {
    dir.create(file.path(path)) 
  }
  if (dir.exists(paste(path, folder)) == FALSE ) {
    dir.create(file.path(path, folder)) 
  }
  n <- length(list.files(paste(path, folder,sep = "")))
  finalFolder = paste(path,folder,'/',sep = "")
  ne <- n + 1
  write.csv(frame, file = paste(finalFolder, ne, ".csv",sep = ""),row.names = FALSE)
}

readData <- function(filename, folder){
  return(read.csv(file = paste( path,folder,'/', filename, ".csv",sep = ""), header = TRUE, sep = ","))
}

fusionarData <- function(folder){
  n <- length(list.files(paste(path, folder,sep = "")))
  origin <- readData(1, folder)
  for (i in c(2:n)) {
    siguiente <- readData(i, folder)
    origin <- merge(origin, siguiente, all = TRUE)
  }
  # sumar las columnas iguales en otro dataframe manualmente
  # remove(fusion) elimina el objeto de la memoria
  return(origin)
}