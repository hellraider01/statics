cuentadieces <- function(array) {
  cont <- 0
  print(array)
  for (i in array) {
    print(i)
    if (is.na(i) == FALSE) {
      if (i == 10) {
        cont = cont + 1
      }
    }else{
      i <- 0
    }
  }
  return(cont)
}

simularTiradaL5A <- function(tipodado = 10, lanzados = 0, guardas = 0) {
  # criticos <- 0
  # metodo edmund aqui
  # tirada de datos 1
  x3 <- sample(tipodado, lanzados, replace = TRUE)
  ordenada <- sort(x3, decreasing = TRUE)
  x4 <- ordenada[1:guardas]
  sum <- sum(x4)
  # tirada de repeticiones 1
  dieces1 <- cuentadieces(x4)
  if (dieces1 >= 1) {
    tir1 <- sort(sample(10, dieces1, replace = TRUE))
    sum <- sum + sum(tir1)
  }
  dieces2 <- cuentadieces(x4)
  if (dieces2 >= 1 && dieces1 != 0) {
    tir2 <- sort(sample(10, dieces2, replace = TRUE))
    sum <- sum + sum(tir2)
  }
  dieces3 <- cuentadieces(x4)
  if (dieces3 >= 1 && dieces1 != 0 && dieces2 != 0) {
    tir3 <- sort(sample(10, dieces3, replace = TRUE))
    sum <- sum + sum(tir3)
  }
  # sort(tirada3, decreasing = TRUE)[1])
  return(sum)
}

