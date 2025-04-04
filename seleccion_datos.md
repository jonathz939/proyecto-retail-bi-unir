## 📊 Datos seleccionados para el proyecto BI - Retail

Se utilizará el conjunto de datos **Store Sales - Time Series Forecasting** publicado en Kaggle.

🔗 **Origen del dataset:**  
https://www.kaggle.com/competitions/store-sales-time-series-forecasting/data

### 🧩 Archivos utilizados:

- **train.csv**: histórico diario de ventas por tienda y categoría de producto (`store_nbr`, `family`, `sales`, `onpromotion`, `date`).
- **stores.csv**: detalles de cada tienda (`store_nbr`, `city`, `state`, `type`, `cluster`).
- **transactions.csv**: total de transacciones realizadas por tienda y día (`store_nbr`, `date`, `transactions`).
- **holidays_events.csv**: descripción de eventos y días festivos por fecha y región (`date`, `type`, `locale`, `description`).
- **oil.csv**: precio del petróleo por día (`date`, `dcoilwtico`) como variable externa.
- **test.csv**: estructura para pruebas de predicción futura.

### ✅ Justificación

El dataset ofrece una rica estructura temporal y categórica, ideal para:

- Construir un **modelo en estrella** en un Data Warehouse con herramientas como **Crono Metadata y Crono ETL**.
- Aplicar procesos de carga automatizada desde archivos CSV usando **Crono ETL**.
- Desarrollar análisis visuales y comparativos con **Crono Analysis**, aprovechando su enfoque de autoservicio para usuarios de negocio.

La granularidad diaria, los eventos, las promociones y el número de transacciones permiten ilustrar claramente el **valor de la inteligencia de negocio** aplicada con herramientas Crono.

📂 Esta descripción y su justificación están documentadas en el archivo `doc/seleccion_datos.md` dentro del repositorio.


