#INEGI

#Librerias
library(grid)
library(dplyr)
library(readr)
library(tidyverse)
library(datasets)
library(corrplot)
library(ggplot2)


#CSV DICIONARIO DE VARIABLES
Dicionario <- read_csv("CSV/diccionario_de_datos/diccionario_de_datos_atus_anual_1997_2021.csv")

atus_anual_2021 <- read.csv("CSV/conjunto_de_datos/atus_anual_2021.csv")
colnames(atus_anual_2021)







#Filtar Tijuana
TJ <- atus_anual_2021 %>% filter(ID_ENTIDAD==02 & ID_MUNICIPIO==004)

#Filtrar por Mes
hist(x=TJ$MES,xlab = "Meses",main = "Histograma de autos chocados en Tijuana",ylab ="Vehiculos",col = "blue",xlim = c(1,12))
#Filtrar por Año
hist(x=TJ$ANIO,xlab = "Año",main = "Histograma de autos chocados en Tijuana",ylab ="Vehiculos",col = "blue")
#Filtrar por Hora
hist(x=TJ$ID_HORA,xlab = "Horas del dia",main = "Histograma de autos chocados en Tijuana",ylab ="Vehiculos",col = "blue",xlim = c(0,24.5),ylim = c(0,1500))
#Filtrar por Edad
hist(x=TJ$ID_EDAD,xlab = "Edad",main = "Histograma de autos chocados en Tijuana",ylab ="Vehiculos",col = "blue")

print(TJ)










#Filtrar Monterrey
MTY <- atus_anual_2021 %>% filter(ID_ENTIDAD==19 & ID_MUNICIPIO==039)

#Filtrar por Mes
hist(x=MTY$MES,xlab = "MESES",main = "Histograma de autos chocados en Monterrey",ylab ="Vehiculos",col = "Red",xlim = c(1,12))
#Filtrar por Año
hist(x=MTY$ANIO,main = "Histograma de autos chocados en Monterrey",ylab ="Vehiculos",col = "Red")
#Filtrar por Hora
hist(x=MTY$ID_HORA,main = "Histograma de autos chocados en Monterrey",ylab ="Vehiculos",col = "Red",xlab = "Horas del dia")
#Filtrar por Edad
hist(x=MTY$ID_EDAD,xlab = "Edad",main = "Histograma de autos chocados en Monterrey",ylab ="Vehiculos",col = "Red")

print(MTY)













#INDICES DE CHOQUES EN EL 2021 PLOT
plot.default(xlab = "Choques",ylab ="Años",main = "Plot de choques en 2021 Monterrey",MTY$MES,xlim = c(1,30000))
plot.default(xlab = "Choques",ylab ="Años",main = "Plot de choques en 2021 Tijuana",TJ$MES,xlim = c(1,30000) )



MTY










