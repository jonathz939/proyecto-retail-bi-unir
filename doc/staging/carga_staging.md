# Carga del Área de Staging

Este documento describe el proceso realizado para la carga de datos al área de *staging* del Data Warehouse del proyecto **Retail BI - UNIR**, utilizando la herramienta **Crono ETL** y el lenguaje **Crono SQL**.

---

## 🔧 Herramientas Utilizadas

- **Crono ETL**: entorno de desarrollo ETL para diseño y ejecución de procesos de carga.
- **Crono SQL**: lenguaje declarativo simplificado para operaciones ETL.
- **GitHub**: como repositorio centralizado para los archivos `.csv`.
- **SQL Server**: como motor de base de datos destino.

---

## 📂 Archivos CSV Utilizados

Los siguientes archivos fueron cargados desde la URL directa de GitHub:

| Archivo | Tabla destino (`stg.*`) |
|--------|--------------------------|
| `stores.csv` | `stg.stage_stores` |
| `train.csv` | `stg.stage_train` |
| `transactions.csv` | `stg.stage_transactions` |
| `oil.csv` | `stg.stage_oil` |
| `holidays_events.csv` | `stg.stage_holidays_events` |
| `test.csv` | `stg.stage_test` |

---

## 🧪 Proceso de Carga

1. **Definición del esquema**  
   - Se intentó crear el esquema `stg`, pero el usuario no tenía permisos.
   - Se solicitó soporte al tutor para la creación del esquema o ejecución con permisos elevados.

2. **Uso de Crono$Csv()**  
   Cada tabla fue creada utilizando la instrucción `Crono$Csv` para leer los archivos directamente desde GitHub:

   ```sql
   CREATE OR REPLACE TABLE stg.stage_stores AS
   SELECT
       store_nbr,
       city,
       state,
       type,
       cluster
   FROM Crono$Csv(FileName='https://raw.githubusercontent.com/jonathz939/proyecto-retail-bi-unir/main/data/stores.csv');
