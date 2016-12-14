gendataL5A <- function(lanzados, guardados, tiradas){
  # sumamaxima <- dadosguardar*10
  x3 <- rep(0, tiradas)
  for (i in c(1:tiradas)) {
    x3[i] <- simularTiradaL5A(tipodado = 10, lanzados = lanzados, guardas = guardados)
  }
  print(x3)
  df <- data.frame(table(x3))
  sum <- sum(df['Freq'])
  x <- 0
  for (i in df[2]) {
    x <- i/sum
  }
  df['Per'] = x
  saveData(df, folder = 'L5A')
}

generarPoblacionL5A <- function(poblaciones, lanzados, guardados, tiradas){
  for (i in c(1:poblaciones)) {
    x3 <- sample(tiradas, 1, replace = TRUE)
    gendataL5A(lanzados = lanzados, guardados = guardados, tiradas = x3)
  }
}