x3 <- c()

gendataL5A <- function(rep, lanzados, guardados){
  # sumamaxima <- dadosguardar*10
  x3 <- rep(0, rep)
  for (i in range(1:rep)) {
    x3[i] <- simularTiradaL5A(tipodado = 10, lanzados = lanzados, guardas = guardados)
    print(i)
  }
  print(x3)
  df <- data.frame(table(x3))
  sum <- sum(df['Freq'])
  x <- 0
  for (i in df[2]) {
    print(i)
    x <- i/sum
  }
  df['%'] = x
  saveData(df)
}