simularTiradaL5A <- function(tipodado=NULL, lanzados=NULL, guardas=NULL){
  # criticos <- 0
  # metodo edmund aqui
  # tirada de datos 1
  x3 <- sample(tipodado, lanzados, replace = TRUE)
  ordenada <- sort(x3, decreasing = TRUE)
  x4 <- ordenada[1:guardas]
  sum <- sum(x4)
  
  # tirada de repeticiones 1
  dieces1 <- cuentadieces(x4)
  tirada1 <- c()
  if (dieces1 >= 1) {
    tirada1 <- sample(tipodado, dieces1, replace = TRUE)
    sum <- sum + sum(tirada1)
  }
  
  # tirada de repeticiones 2
  dieces2 <- cuentadieces(tirada1)
  tirada2 <- c()
  if (dieces2 >= 1) {
    tirada2 <- sample(tipodado, dieces2, replace = TRUE)
    sum <- sum + sum(tirada2)
  }
  
  # tirada de repeticiones 3
  dieces3 <- cuentadieces(tirada2)
  tirada2 <- c()
  if (dieces3 >= 1) {
    tirada3 <- sample(tipodado, dieces3, replace = TRUE)
    sum <- sum + sum(tirada3)
  }
  
  return(sum) 
}

cuentadieces <- function(array){
  cont <- 0
  for (i in array){
    if (i == 10){
      cont = cont + 1
    }
  }
  return(cont)
}