regresion <- function(frame){
  val <- scale(frame$Per,center = TRUE, scale = TRUE)
  print(val)
  return(val)
}

normalizar <- function(frame){
  des <- sd(frame$Per, na.rm = TRUE)
  media <- mean(frame$Per)
  normal <- dnorm(frame$Per, media,des)
  return(normal)
}

graficar <- function(datosX, datosY){
  plot(datosX, datosY, type="l", lty = 2, xlab="Valores Optenidos",
  ylab="Frecuencia Normalizada", main="Normalizacion de Datos")
}
