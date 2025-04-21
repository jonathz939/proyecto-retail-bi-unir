# Exploración de datos
# Carga de librerías necesarias
library(tidyverse)
library(readr)

# Cargar datasets
train <- read_csv("data/train.csv")
stores <- read_csv("data/stores.csv")
transactions <- read_csv("data/transactions.csv")
oil <- read_csv("data/oil.csv")
holidays <- read_csv("data/holidays_events.csv")

# Exploración básica
glimpse(train)
summary(train)
table(train$family)
