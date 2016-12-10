source(file="./functions/manager.R")
source(file="./functions/genData.R") 
# genracion de los csv vasados en las estadisticas
for (i in c(1:10)) {
  x3 <- sample(200, 1, replace = TRUE)
  print(x3)
  gendata(tipoDado=10,rep=x3)
}
