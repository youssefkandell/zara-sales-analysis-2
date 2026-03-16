USE zara_db;

SELECT * FROM zara_sales LIMIT 5;

SELECT 
product_position,
SUM(price * sales_volume) AS revenue,
SUM(sales_volume) AS volume
FROM zara_sales
GROUP BY product_position;

SELECT 
promotion,
SUM(price * sales_volume) AS revenue,
SUM(sales_volume) AS volume
FROM zara_sales
GROUP BY promotion;

SELECT
section,
CASE
  WHEN price < 50 THEN '0-50'
  WHEN price BETWEEN 50 AND 100 THEN '50-100'
  WHEN price BETWEEN 100 AND 200 THEN '100-200'
  ELSE '200+'
END AS price_range,
SUM(sales_volume) AS volume
FROM zara_sales
GROUP BY section, price_range
ORDER BY section; 

SELECT name, sales_volume
FROM zara_sales
WHERE seasonal = 'Yes'
ORDER BY sales_volume ASC
LIMIT 10;

SELECT 
name,
SUM(sales_volume) AS total_volume,
SUM(price * sales_volume) AS revenue,
product_position
FROM zara_sales
WHERE product_position != 'Front of Store'
GROUP BY name, product_position
ORDER BY total_volume DESC
LIMIT 10; 

SELECT name, sales_volume
FROM zara_sales
WHERE product_position = 'Front of Store'
ORDER BY sales_volume ASC
LIMIT 10;

SELECT 
product_category,
SUM(price * sales_volume) AS revenue,
SUM(sales_volume) AS volume
FROM zara_sales
GROUP BY product_category
ORDER BY revenue DESC;

SELECT
CASE
  WHEN name LIKE '%JACKET%' THEN 'Jackets'
  WHEN name LIKE '%SWEATER%' THEN 'Sweaters'
  WHEN name LIKE '%OVERSHIRT%' THEN 'Overshirts'
  WHEN name LIKE '%BOMBER%' THEN 'Bomber Jackets'
  ELSE 'Other'
END AS category_group,
SUM(price * sales_volume) AS revenue,
SUM(sales_volume) AS volume
FROM zara_sales
GROUP BY category_group
ORDER BY revenue DESC;
