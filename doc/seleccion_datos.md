# Selección de Datos

## Proyecto: Análisis y Predicción de Ventas Retail

Este proyecto forma parte del Máster en Inteligencia de Negocio (UNIR) y tiene como objetivo construir un Data Warehouse y desarrollar análisis y predicciones sobre el comportamiento de ventas en el sector retail, aplicando herramientas del ecosistema Crono BI.

## Datos Seleccionados

Se ha optado por utilizar el conjunto de datos "Store Sales - Time Series Forecasting" de Kaggle, el cual ofrece una cobertura rica y realista para el diseño de un sistema de Business Intelligence completo. Los archivos seleccionados son:

### Archivos CSV:

- **train.csv**: Contiene el histórico diario de ventas por tienda y categoría de producto.
- **stores.csv**: Información de atributos de cada tienda (ubicación, tipo, clúster).
- **transactions.csv**: Número de transacciones por tienda y fecha, útil para métricas de rendimiento.
- **holidays_events.csv**: Días festivos y eventos especiales, útiles para análisis de estacionalidad y su impacto.
- **oil.csv**: Precio del petróleo por fecha, utilizado como variable externa para contextualizar el entorno económico.
- **test.csv**: Datos de prueba para predicción y evaluación del modelo (fase posterior).

## Justificación

Este conjunto de datos ha sido seleccionado por su riqueza estructural y temporal, lo que permite construir un Data Warehouse robusto y aplicar las funcionalidades principales del ecosistema Crono BI:

- **Crono Metadata**: permite definir una capa semántica que traduce las tablas y campos técnicos en un lenguaje de negocio comprensible, ideal para trabajar con dimensiones como tienda, producto, fecha y eventos.
- **Crono ETL**: puede aprovecharse para automatizar el proceso de carga de datos desde los archivos CSV (área de staging) hacia un modelo en estrella optimizado para análisis masivos, aplicando buenas prácticas de diseño de DWH.
- **Crono Analysis**: permite construir consultas, comparativas y cuadros de mando visuales, facilitando el autoservicio para usuarios de negocio que necesitan analizar las ventas por tienda, familia, estado o evento.

Además, la granularidad diaria del dataset y la presencia de múltiples variables relacionadas (ventas, promociones, eventos, transacciones) son ideales para demostrar el potencial de Crono en el modelado, carga, análisis y visualización de datos en proyectos reales de Business Intelligence.

## Fuente de los datos

📦 Kaggle: https://www.kaggle.com/competitions/store-sales-time-series-forecasting/data
