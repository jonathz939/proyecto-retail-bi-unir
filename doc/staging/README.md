# 🏗️ Área de Staging - Documentación de Tablas

Esta carpeta contiene la documentación técnica de las tablas que conforman el área de staging en el Data Warehouse del proyecto **Retail BI UNIR**.

---

## 🎯 Objetivo del Staging

Servir como zona intermedia donde se almacenan los datos originales **sin transformaciones significativas**, permitiendo trazabilidad, limpieza y posterior modelado en el Data Warehouse.

Los datos se cargan desde archivos `.csv` utilizando **Crono ETL** y scripts de integración, manteniendo los nombres y estructuras fieles al origen.

---

## 📂 Tablas Incluidas

| Tabla                | Origen CSV              | Descripción                                          |
|---------------------|-------------------------|------------------------------------------------------|
| `stage_stores`      | `stores.csv`            | Información de tiendas: ciudad, estado, tipo, clúster. |
| `stage_train`       | `train.csv`             | Histórico de ventas por fecha, tienda y familia.    |
| `stage_transactions`| `transactions.csv`      | Número de transacciones por tienda y fecha.         |
| `stage_oil`         | `oil.csv`               | Precio del petróleo WTI (indicador externo).        |
| `stage_holidays_events` | `holidays_events.csv` | Feriados, eventos locales y nacionales.             |
| `stage_test`        | `test.csv`              | Datos para predicción (sin variable objetivo).      |

---

## 📁 Contenido de la Carpeta

Cada tabla tiene su archivo `.md` con:
- Descripción de columnas
- Tipo de datos
- Fuente de origen
- Notas relevantes sobre su uso

Además, encontrarás:
- `carga_staging.md`: Resumen del proceso de carga.
- `README.md`: Este documento.

---

**Responsable:** Jonath Zambrano  
**Máster en Inteligencia de Negocio – UNIR**
