# 🚀 Resumen del Proceso de Carga al Área de Staging

Este documento describe los pasos realizados para cargar los archivos de datos al área de staging del Data Warehouse del proyecto **Retail BI UNIR**.

---

## 📂 Archivos Cargados

- `stores.csv`
- `train.csv`
- `transactions.csv`
- `oil.csv`
- `holidays_events.csv`
- `test.csv`

---

## 🔧 Metodología de Carga

- **Herramienta:** Crono ETL y Crono SQL.
- **Origen de datos:** Repositorio GitHub público del proyecto.
- **Función utilizada:** `Crono$Csv()` para lectura directa desde URL.
- **Esquema:** `stg` (área de staging).

---

## 📜 Scripts Utilizados

Cada tabla se crea mediante un `CREATE OR REPLACE TABLE` usando datos desde:

```sql
FROM Crono$Csv('https://github.com/jonathz939/proyecto-retail-bi-unir/raw/main/data/nombre_archivo.csv')
```

Ejemplo:

```sql
CREATE OR REPLACE TABLE stg.stage_stores AS
SELECT 
    store_nbr, city, state, type, cluster
FROM Crono$Csv('https://github.com/jonathz939/proyecto-retail-bi-unir/raw/main/data/stores.csv');
```

---

## ✅ Resultado

Todas las tablas `stage_*` fueron creadas correctamente y validadas mediante consultas `SELECT`.

Los tipos de datos fueron inferidos automáticamente desde los archivos fuente y verificados con las especificaciones del proyecto.

---

**Responsable:** Jonath Zambrano  
**Máster en Inteligencia de Negocio – UNIR**

