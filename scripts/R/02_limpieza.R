# 02_limpieza.R – Transformación y limpieza de datos
# -------------------------------------------------
library(tidyverse)
library(readr)
library(lubridate)

# Cargar datasets
train <- read_csv("data/train.csv")
transactions <- read_csv("data/transactions.csv")
oil <- read_csv("data/oil.csv")
holidays <- read_csv("data/holidays_events.csv")
stores <- read_csv("data/stores.csv")

# Conversión de fechas
train$date <- as.Date(train$date)
transactions$date <- as.Date(transactions$date)
oil$date <- as.Date(oil$date)
holidays$date <- as.Date(holidays$date)

# Reemplazar valores negativos por NA en ventas
train <- train %>%
  mutate(sales = ifelse(sales < 0, NA, sales))

# Eliminar filas duplicadas
train <- distinct(train)
transactions <- distinct(transactions)
oil <- distinct(oil)
holidays <- distinct(holidays)
stores <- distinct(stores)

# Normalizar nombres de variables (por si acaso)
names(train) <- tolower(names(train))
names(transactions) <- tolower(names(transactions))
names(oil) <- tolower(names(oil))
names(holidays) <- tolower(names(holidays))
names(stores) <- tolower(names(stores))

# Validación de valores faltantes
missing_summary <- sapply(train, function(x) sum(is.na(x)))
print("Resumen de valores faltantes en train:")
print(missing_summary)