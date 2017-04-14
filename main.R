# cargar librerias e instalar paquetes
install.packages('plyr')
library(plyr)  
# inicio programa
rm(list = ls()) # limpio el workspace
source(file="./functions/simulador.R")
source(file="./functions/manager.R")
source(file="./functions/genData.R") 
source(file="./functions/estadisticas.R")
# genracion de los csv vasados en las estadisticas
generarPoblacionL5A(tiradas = 10, maxlanzados = 5, maxguardados = 3)
# datos <- readData(filename = "1", folder = 'L5A')
# datos2 <- readData(filename = "2", folder = 'L5A')
# datos3 <- readData(filename = "3", folder = 'L5A')
# datos4 <- readData(filename = "4", folder = 'L5A')
# datos5 <- readData(filename = "5", folder = 'L5A')
# dat <- normalizar(datos)
# graficar(datosX = datos$Per, datosY = dat)
# print(dat)
fusion <- fusionarData(folder = 'L5A')
# dat <- normalizar(rep$dvalor)
# graficar(datosX = rep$dvalor, datosY = dat)