r_script = """
# 📥 Script R - Carga de Archivos CSV para Staging

# Este script se utiliza para cargar archivos CSV al entorno de análisis en R
# como parte del proceso de creación del área de staging del proyecto Retail BI UNIR.

# Librerías necesarias
library(readr)
library(dplyr)

# Definir rutas de los archivos (ajustar si es necesario)
ruta_base <- "https://raw.githubusercontent.com/jonathz939/proyecto-retail-bi-unir/main/data/"

# Cargar archivos
stores <- read_csv(paste0(ruta_base, "stores.csv"))
train <- read_csv(paste0(ruta_base, "train.csv"))
transactions <- read_csv(paste0(ruta_base, "transactions.csv"))
oil <- read_csv(paste0(ruta_base, "oil.csv"))
holidays_events <- read_csv(paste0(ruta_base, "holidays_events.csv"))
test <- read_csv(paste0(ruta_base, "test.csv"))

# Verificamos estructuras
glimpse(stores)
glimpse(train)
glimpse(transactions)
glimpse(oil)
glimpse(holidays_events)
glimpse(test)

# Guardar localmente como RDS (opcional)
saveRDS(stores, "stores.rds")
saveRDS(train, "train.rds")
saveRDS(transactions, "transactions.rds")
saveRDS(oil, "oil.rds")
saveRDS(holidays_events, "holidays_events.rds")
saveRDS(test, "test.rds")
"""
