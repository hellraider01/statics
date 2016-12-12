regresion <- function(frame){
  val <- scale(frame$Per,center = TRUE, scale = TRUE)
  return(val)
}

# falta normalizar entre dos numeros 0-40 por ejemplo
normalizar <- function(frame){
  des <- sd(frame$Per, na.rm = TRUE)
  media <- mean(frame$Per)
  normal <- dnorm(frame$Per, media, des)
  return(normal)
}

IC <- function(normaldata, porcentaje){
  ic <- c(t.test(normaldata, conf.level = porcentaje/100)[4]$conf.int[1],t.test(normaldata, conf.level =  porcentaje/100)[4]$conf.int[2])
  return(ic)
}

graficar <- function(datosX, datosY){
  plot(datosX, datosY, type="l", lty = 2, xlab="Valores Optenidos",
  ylab="Frecuencia Normalizada", main="Normalizacion de Datos")
}
