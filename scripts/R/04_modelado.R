# 04_modelado.R – Modelado predictivo de ventas
# -------------------------------------------
library(tidyverse)
library(readr)
library(lubridate)
library(caret)

# Cargar dataset limpio
train <- read_csv("data/train.csv")

# Conversión de fecha y creación de variables temporales
train <- train %>%
  mutate(date = as.Date(date),
         year = year(date),
         month = month(date),
         weekday = wday(date, label = TRUE))

# Selección de variables relevantes para el modelo
train_model <- train %>%
  select(sales, store_nbr, family, onpromotion, year, month, weekday)

# Conversión de variables categóricas a factores
train_model$store_nbr <- as.factor(train_model$store_nbr)
train_model$family <- as.factor(train_model$family)
train_model$weekday <- as.factor(train_model$weekday)

# Eliminar registros con valores faltantes
train_model <- na.omit(train_model)

# División de los datos en entrenamiento y prueba (80/20)
set.seed(123)
splitIndex <- createDataPartition(train_model$sales, p = 0.8, list = FALSE)
train_data <- train_model[splitIndex, ]
test_data <- train_model[-splitIndex, ]

# Entrenamiento del modelo de regresión lineal
modelo_lm <- train(sales ~ ., data = train_data, method = "lm")

# Evaluación del modelo
predicciones <- predict(modelo_lm, newdata = test_data)
rmse <- sqrt(mean((predicciones - test_data$sales)^2))

cat("RMSE del modelo de regresión lineal:", rmse, "\\n")

# Visualización de predicción vs realidad
results <- data.frame(Real = test_data$sales, Predicho = predicciones)

ggplot(results, aes(x = Real, y = Predicho)) +
  geom_point(alpha = 0.5) +
  geom_abline(color = "blue", linetype = "dashed") +
  labs(title = "Ventas reales vs. predichas", x = "Ventas reales", y = "Ventas predichas")
"""