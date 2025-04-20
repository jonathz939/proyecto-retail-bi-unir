# 📈 Indicadores Clave de Rendimiento (KPIs)

Esta carpeta contiene la definición, lógica de cálculo y propósito de los KPIs utilizados en el proyecto **Retail BI UNIR**. Estos indicadores son fundamentales para medir el rendimiento comercial, identificar patrones de comportamiento y tomar decisiones basadas en datos.

---

## 🎯 Objetivo

Establecer un conjunto de métricas clave que permitan evaluar:

- La evolución de las ventas por tienda, producto y región.
- El impacto de promociones, feriados y eventos externos.
- La eficiencia y el comportamiento del consumidor a lo largo del tiempo.

---

## 📊 KPIs Propuestos

| KPI                          | Descripción                                                        | Fórmula o Cálculo                       |
|-----------------------------|---------------------------------------------------------------------|----------------------------------------|
| **Ventas Totales**          | Suma total de ventas por período, tienda o familia de productos.   | `SUM(sales)`                           |
| **Ventas Promedio por Día** | Ventas promedio en una tienda en un rango de fechas.               | `AVG(sales)`                           |
| **Tasa de Promoción**       | Porcentaje de productos vendidos en promoción.                     | `SUM(onpromotion) / COUNT(*)`          |
| **Variación Interanual**    | Comparación de ventas entre años consecutivos.                     | `(ventas_año2 - ventas_año1) / año1`   |
| **Ticket Promedio**         | Ingreso promedio por transacción.                                  | `SUM(sales) / SUM(transactions)`       |
| **Impacto de Festivos**     | Variación de ventas en días con eventos frente a días normales.    | `Δ ventas evento vs promedio diario`   |

---

## 📄 Contenidos de esta Carpeta

- `ventas_totales.md`: Detalle de lógica y visualización del KPI de ventas totales.
- `ticket_promedio.md`: Explicación del cálculo y relevancia.
- `impacto_eventos.md`: Cómo se mide el impacto de feriados y promociones.

---

**Autor:** Jonath Zambrano  
**Máster en Inteligencia de Negocio – UNIR**
