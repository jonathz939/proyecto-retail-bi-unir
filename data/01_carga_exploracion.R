# 01_carga_exploracion.R

# Cargar librerías necesarias
library(readr)       # Para leer CSVs
library(dplyr)       # Para manipulación de datos
library(ggplot2)     # Para visualización
library(lubridate)   # Para trabajar con fechas

# Definir rutas de los archivos
ruta_train <- "data/raw/train.csv"
ruta_stores <- "data/raw/stores.csv"

# Cargar datasets
ventas <- read_csv(ruta_train)
tiendas <- read_csv(ruta_stores)

#  Exploración rápida de las estructuras
glimpse(ventas)
glimpse(tiendas)

# Unir datasets por número de tienda
ventas_completo <- ventas %>%
  left_join(tiendas, by = "store_nbr") %>%
  mutate(date = ymd(date))  # Convertir fechas

# Exploración inicial
summary(ventas_completo$sales)
table(ventas_completo$state)
table(ventas_completo$family)
