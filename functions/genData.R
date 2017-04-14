gendataL5A <- function(lanzados, guardados, tiradas){
  # sumamaxima <- dadosguardar*10
  dvalor <- rep(0, tiradas)
  for (i in c(1:tiradas)) {
    dvalor[i] <- simularTiradaL5A(tipodado = 10, lanzados = lanzados, guardas = guardados)
  }
  dlanzado <- rep(lanzados, length(dvalor))
  dguardado <- rep(guardados, length(dvalor))
  df <- data.frame(table(dvalor,dlanzado,dguardado))
  saveData(df, folder = 'L5A')
}

generarPoblacionL5A <- function(tiradas, maxlanzados = 30, maxguardados = 20){
    print("poblaciones a generar")
    print(maxlanzados*maxguardados)
    print("Fin de Informacion")
    x3 <- sample(tiradas, 1, replace = TRUE)
    guardados <- seq(1:maxguardados)
    lanzados <- seq(1:maxlanzados)
    for (aguardar in guardados) {
      for (alanzar in lanzados) {
        gendataL5A(lanzados = alanzar, guardados = aguardar, tiradas = x3)
      }
    }
}