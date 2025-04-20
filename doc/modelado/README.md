# 📐 Documentación del Modelo de Datos

Esta carpeta contiene el diseño del **modelo dimensional** (o **modelo ERD**) del proyecto de Business Intelligence para análisis y predicción de ventas en retail.

## 📊 Objetivo del Modelado

Transformar los datos cargados en el área de staging en un modelo optimizado para el análisis multidimensional. El modelo facilita consultas eficientes por dimensiones como tienda, producto, tiempo y eventos externos.

---

## 🧱 Estructura del Modelo

Se sigue un enfoque **en estrella (star schema)** con una tabla de hechos central (`hechos_ventas`) y múltiples dimensiones:

### 🔹 Tabla de Hechos
- `hechos_ventas`: Contiene las medidas de ventas, promociones, y transacciones a nivel de tienda-producto-fecha.

### 🔸 Dimensiones
- `dim_tiendas`: Información sobre cada tienda (ciudad, estado, tipo).
- `dim_productos`: Categorías de productos (`family`).
- `dim_tiempo`: Calendario desde 2013 a 2017, incluyendo año, mes, día, día de semana, etc.
- `dim_eventos`: Eventos y feriados que pueden afectar el comportamiento de compra.
- `dim_petroleo`: Precio del petróleo para analizar impactos macroeconómicos.

---

## 📄 Contenidos de esta Carpeta

- `modelo_estrella.png`: Diagrama del modelo de datos en estrella.
- `dim_tiempo.md`, `dim_tiendas.md`, etc.: Descripción detallada de cada dimensión.
- `hechos_ventas.md`: Descripción de la tabla de hechos, medidas incluidas y claves foráneas.

---

## 🧩 Herramientas utilizadas

- **Crono Metadata**: Para definición del modelo semántico y generación de relaciones.
- **SQL Server**: Motor de base de datos para implementación y consulta.
- **dbdiagram.io** o **draw.io**: Para el diseño visual del modelo.

---

**Autor:** Jonath Zambrano  
**Máster en Inteligencia de Negocio - UNIR**
