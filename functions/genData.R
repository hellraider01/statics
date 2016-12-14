gendataL5A <- function(lanzados, guardados, tiradas){
  # sumamaxima <- dadosguardar*10
  dvalor <- rep(0, tiradas)
  for (i in c(1:tiradas)) {
    dvalor[i] <- simularTiradaL5A(tipodado = 10, lanzados = lanzados, guardas = guardados)
  }
  df <- data.frame(table(dvalor))
  df['dlanzado'] <- rep(lanzados, length(df$dvalor))
  df['dguardado'] <- rep(guardados, length(df$dvalor))
  df[is.na(df$Freq)] <- 0
  sum <- sum(df$Freq)
  print(sum)
  x <- 0
  for (i in df$Freq) {
    x <- i/sum
  }
  df['Per'] <- x
  saveData(df, folder = 'L5A')
}

generarPoblacionL5A <- function(poblaciones, tiradas){
  for (i in c(1:poblaciones)) {
    x3 <- sample(tiradas, 1, replace = TRUE)
    aguardar <- sample(1:20, 1, replace = TRUE) #dados a guardar
    alanzar <- sample(aguardar:aguardar*2, 1, replace = TRUE) #dados a lanzar
    gendataL5A(lanzados = alanzar, guardados = aguardar, tiradas = x3)
  }
}