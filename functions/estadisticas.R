regresion <- function(frame){
  val <- scale(frame,center = TRUE, scale = TRUE)
  return(val)
}
# rep <- count(fusion, 'dvalor')
# falta normalizar entre dos numeros 0-40 por ejemplo
normalizar <- function(frame){
  des <- sd(frame, na.rm = TRUE)
  media <- mean(frame)
  normal <- dnorm(frame, media, des)
  return(normal)
}

IC <- function(normaldata, porcentaje){
  res <- t.test(normaldata, conf.level = porcentaje/100)[4]
  ic <- c(res$conf.int[1],res$conf.int[2])
  return(ic)
}

checkICTirada <- function(ic, sumatirada) {
  if (sumatirada >= ic[1] && sumatirada <= ic[2]) {
    return(TRUE)
  }else{
    return(FALSE)
  }
}

graficar <- function(datosX, datosY){
  plot(datosX, datosY, type="l", lty = 2, xlab="Valores Optenidos",
  ylab="Frecuencia Normalizada", main="Normalizacion de Datos")
}

prediccionVFLG <- function(dataframe, lanzado, guardado){
  dat <- lm(dvalor ~ dlanzado + dguardado, data = dataframe)
  res <- dat[1]$coefficients[1] + lanzado*dat[1]$coefficients[2] + guardado*dat[1]$coefficients[2]
  res <- round(res, digits = 0)
  return(res)
}

prediccionLFVG <- function(dataframe, valordeseado, guardado){
  dat <- lm(dlanzado ~ dvalor + dguardado, data = dataframe)
  res <- dat[1]$coefficients[1] + valordeseado*dat[1]$coefficients[2] + guardado*dat[1]$coefficients[2]
  res <- round(res, digits = 0)
  return(res)
}

prediccionGFVL <- function(dataframe, dvalor, lanzado){
  dat <- lm(dlanzado ~ dvalor + dguardado, data = dataframe)
  res <- dat[1]$coefficients[1] + dvalor*dat[1]$coefficients[2] + lanzado*dat[1]$coefficients[2]
  res <- round(res, digits = 0)
  return(res)
}
