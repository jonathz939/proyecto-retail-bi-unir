# Selección de Datos

## Proyecto: Análisis y Predicción de Ventas Retail

Este proyecto forma parte del Máster en Inteligencia de Negocio (UNIR) y tiene como objetivo construir un Data Warehouse y desarrollar análisis y predicciones sobre el comportamiento de ventas en el sector retail.

## Datos Seleccionados

Se ha optado por utilizar el conjunto de datos "Store Sales - Time Series Forecasting" de Kaggle, el cual ofrece una cobertura rica y realista para el diseño de un sistema de Business Intelligence completo. Los archivos seleccionados son:

### Archivos CSV:

- **train.csv**: Contiene el histórico diario de ventas por tienda y categoría de producto.
- **stores.csv**: Información de atributos de cada tienda (ubicación, tipo, clúster).
- **holidays_events.csv**: Días festivos y eventos especiales, útiles para análisis de estacionalidad y su impacto.
- **transactions.csv**: Número de transacciones por tienda y fecha, útil para métricas de rendimiento.
- **oil.csv**: Precio del petróleo por fecha, utilizado como variable externa para contextualizar el entorno económico.
- **test.csv**: Datos de prueba para predicción y evaluación del modelo (fase posterior).

## Justificación

Estos datos fueron seleccionados porque:

- Ofrecen un escenario realista de un negocio retail con múltiples puntos de venta, productos y variación temporal.
- Permiten construir un modelo de datos en estrella, con una tabla de hechos (`ventas`) y múltiples dimensiones (tienda, producto, fecha, eventos).
- Son adecuados para aplicar técnicas de análisis de series temporales, cálculo de KPIs y visualización interactiva mediante herramientas como R, Shiny o Power BI.
- La granularidad diaria permite realizar análisis profundos y predicciones a nivel detallado.

## Conclusión

El dataset seleccionado permite cubrir todos los objetivos propuestos en el proyecto, desde la construcción del Data Warehouse hasta la creación de dashboards analíticos y modelos predictivos. Su estructura es rica y lo hace ideal para un entorno de aprendizaje práctico.
