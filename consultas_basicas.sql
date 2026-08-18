-- ══════════════════════════════════════════
-- TechStore — Consultas Básicas SELECT
-- Autor: Sofia Ibarra
-- Fecha: 17/08/2026
-- ══════════════════════════════════════════


CREATE DATABASE TechStore;
GO
USE TechStore;
GO
DROP TABLE IF EXISTS sales;
CREATE TABLE sales (
    order_id       INT,
    order_date     DATE,
    customer_id    INT,
    product_id     INT,
    product_name   VARCHAR(100),
    category       VARCHAR(50),
    quantity       INT,
    unit_price     DECIMAL(10,2),
    total_amount   DECIMAL(10,2)
);
INSERT INTO sales VALUES (1001, '2024-01-05', 201, 301, 'Laptop Pro 15',      'Computación', 2, 1200.00, 2400.00);
INSERT INTO sales VALUES (1002, '2024-01-08', 202, 302, 'Mouse Inalámbrico',  'Accesorios',  5,   28.00,  140.00);
INSERT INTO sales VALUES (1003, '2024-01-12', 203, 303, 'Monitor 4K 27"',     'Computación', 1,  450.00,  450.00);
INSERT INTO sales VALUES (1004, '2024-01-15', 201, 304, 'Teclado Mecánico',   'Accesorios',  3,   95.00,  285.00);
INSERT INTO sales VALUES (1005, '2024-02-03', 204, 305, 'Auriculares BT Pro', 'Audio',       2,  120.00,  240.00);
INSERT INTO sales VALUES (1006, '2024-02-10', 202, 301, 'Laptop Pro 15',      'Computación', 1, 1200.00, 1200.00);
INSERT INTO sales VALUES (1007, '2024-02-18', 205, 306, 'SSD Externo 1TB',    'Almacenamiento', 3, 130.00, 390.00);
INSERT INTO sales VALUES (1008, '2024-03-05', 203, 302, 'Mouse Inalámbrico',  'Accesorios',  8,   28.00,  224.00);
INSERT INTO sales VALUES (1009, '2024-03-12', 204, 303, 'Monitor 4K 27"',     'Computación', 2,  450.00,  900.00);
INSERT INTO sales VALUES (1010, '2024-03-20', 205, 304, 'Teclado Mecánico',   'Accesorios',  4,   95.00,  380.00);

--------------------------------------
--CONSULTAR 1: EXPLORACION GENERAL
--------------------------------------
SELECT * FROM sales; --Usamos Select * unicamente cuando necesitamos visualizar todos los datos de una tabla, no debe usarse en entornos de producción ni en consultas sobre tablas grandes porque impacta negativamente en el rendimiento del sistema y consume recursos innecesarios

--------------------------------------
--CONSULTA 2: SELECCION ESPECIFICA 
--------------------------------------
SELECT customer_id, product_id, total_amount FROM sales; --Permite visualizar unicamente los datos especificos que necesitamos analizar

--------------------------------------
--CONSULTA 3: NOMBRES AMIGABLES CON ALIAS
--------------------------------------
SELECT
order_date AS fecha_pedido,
product_name AS nombre_producto, 
quantity AS cantidad_unidades
FROM sales;


