# 03_kpis.R – Cálculo de indicadores clave (KPIs)
# ------------------------------------------------
library(tidyverse)
library(readr)
library(lubridate)

# Cargar dataset limpio
train <- read_csv("data/train.csv")
stores <- read_csv("data/stores.csv")

# Conversión de fechas
train$date <- as.Date(train$date)

# KPI 1: Promedio de ventas por tienda
kpi_ventas_por_tienda <- train %>%
  group_by(store_nbr) %>%
  summarise(promedio_ventas = mean(sales, na.rm = TRUE)) %>%
  arrange(desc(promedio_ventas))

# KPI 2: Ventas totales por categoría de producto (family)
kpi_ventas_por_categoria <- train %>%
  group_by(family) %>%
  summarise(ventas_totales = sum(sales, na.rm = TRUE)) %>%
  arrange(desc(ventas_totales))

# KPI 3: Evolución mensual de ventas
kpi_ventas_mensuales <- train %>%
  mutate(mes = floor_date(date, "month")) %>%
  group_by(mes) %>%
  summarise(ventas_mensuales = sum(sales, na.rm = TRUE))

# KPI 4: Impacto de promociones (ventas promedio con vs sin promoción)
kpi_promociones <- train %>%
  group_by(onpromotion) %>%
  summarise(promedio_ventas = mean(sales, na.rm = TRUE))

# Mostrar KPIs
print("Promedio de ventas por tienda:")
print(kpi_ventas_por_tienda)

print("Ventas totales por categoría:")
print(kpi_ventas_por_categoria)

print("Evolución mensual de ventas:")
print(kpi_ventas_mensuales)

print("Impacto de promociones:")
print(kpi_promociones)
