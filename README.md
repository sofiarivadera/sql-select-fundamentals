# TechStore — Consultas Básicas SELECT

### 1. ¿Por qué es mala práctica usar `SELECT *` en producción?

El uso de `SELECT *` en entornos de producción debe evitarse principalmente por dos razones:
Rendimiento y consumo de recursos: Al solicitar todas las columnas de una tabla, la base de datos se ve obligada a leer y transferir un volumen de información mayor al necesario. En tablas con millones de registros o columnas pesadas, esto satura el ancho de banda de la red y consume memoria innecesariamente.
Mantenibilidad y fragilidad del código: Si la estructura de la tabla cambia en el futuro (por ejemplo, si se agregan, eliminan o reordenan columnas), las aplicaciones o reportes que consumen la consulta pueden fallar o procesar datos en el orden equivocado, rompiendo la integración del sistema.

---

### 2. ¿Por qué son importantes los alias para un stakeholder no técnico?

Los alias (`AS`) son fundamentales porque traducen los nombres técnicos de la base de datos a términos comprensibles para las personas del negocio que consumen los reportes. Por ejemplo, para el equipo de finanzas, una columna nombrada como `total_amount` resulta ambigua o técnica. Al aplicar un alias como `monto_total` (o cambiar `quantity` por `cantidad_unidades`), el resultado de la consulta se vuelve autoexplicativo al instante, eliminando barreras de interpretación y facilitando la toma de decisiones sin requerir conocimientos de SQL.
