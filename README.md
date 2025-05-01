# 📊 Proyecto BI: Análisis y Predicción de Ventas Retail

Este proyecto forma parte de la asignatura de Prácticas del **Máster en Inteligencia de Negocio (UNIR)**. Su finalidad es aplicar técnicas de análisis de datos, modelado predictivo y visualización interactiva utilizando herramientas profesionales y entornos de desarrollo avanzados.

🔗 **Repositorio oficial:** `proyecto-retail-bi-unir`

---

## 🎯 Objetivo General

Analizar el comportamiento de ventas en el sector retail y predecir la demanda futura por tienda y categoría de producto, con el fin de optimizar la toma de decisiones comerciales y estratégicas.

---

## 🧩 Dataset

**Fuente:** Kaggle - *Store Sales - Time Series Forecasting*  
**Cobertura temporal:** 2013-01-01 a 2017-08-15  

**Variables clave:**
- `date` — Fecha de venta
- `store_nbr` — Número de tienda
- `state` — Región
- `family` — Categoría de producto
- `sales` — Ventas registradas
- `onpromotion` — Promociones activas

---

## 🛠️ Tecnologías Utilizadas

- **R**: Análisis de datos, limpieza, visualización y desarrollo de modelos de predicción.
- **Shiny**: Creación de dashboards interactivos.
- **Crono ETL**: Herramienta para la carga y transformación de datos desde archivos `.csv` al área de *staging*, facilitando procesos ETL eficientes.
- **Crono Metadata**: Para definir la capa semántica del modelo, facilitando el acceso a los datos en lenguaje de negocio.
- **Crono Analysis**: Para el análisis y visualización de los datos directamente desde el DWH.
- **Crono SQL**: Lenguaje declarativo que simplifica la integración de fuentes externas y la generación de consultas SQL dentro de Crono.
- **SQL Server**: Base de datos relacional utilizada para almacenar tanto el staging como el modelo de Data Warehouse.
- **GitHub**: Gestión del repositorio del proyecto, control de versiones y colaboración mediante *issues* y documentación.

---

## 📦 Descarga de Datos

Dado que el archivo `train.csv` excede el tamaño permitido por GitHub, se encuentra disponible vía OneDrive.

🔗 [Descargar train.csv desde OneDrive](https://onedrive.live.com/...)

**Instrucciones:**
1. Descarga el archivo desde el enlace.
2. Guárdalo en la ruta correspondiente dentro del directorio `data/` de tu repositorio local.

---

## 🔁 Estructura del Proyecto

```bash
proyecto-retail-bi-unir/
│
├── data/                     # Archivos de datos CSV
├── doc/                      # Documentación del proyecto
│   ├── staging/              # Documentación de tablas de staging
│   └── README.md             # Guía general de documentación
├── scripts/                  # SQL / R para carga y conexión
│
├── shiny/                    # Dashboard interactivo
└── README.md                 # Documento principal del proyecto
```

---

## 🧪 Fases del Proyecto

1. Carga y exploración de datos (`01_exploracion.R`)
2. Limpieza y transformación
3. Análisis exploratorio (EDA)
4. Definición de KPIs
5. Modelado predictivo de ventas
6. Desarrollo de dashboard interactivo en Shiny
7. Presentación ejecutiva

---

## 👤 Autor

**Jonath Zambrano**  
[GitHub: jonathz939](https://github.com/jonathz939)  
Máster en Inteligencia de Negocio – UNIR
