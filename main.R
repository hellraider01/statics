rm(list = ls()) # limpio el workspace

source(file="./functions/manager.R")
source(file="./functions/genData.R") 
source(file="./functions/simulador.R")
source(file="./functions/estadisticas.R")
# genracion de los csv vasados en las estadisticas
generarPoblacionL5A(rep = 1,lanzados = 8,guardados = 4,tiradas = 5000)
datos <- readData(filename = "1", folder = 'L5A')
dat <- normalizar(datos)
graficar(datosX = datos$Per, datosY = dat)
print(dat)