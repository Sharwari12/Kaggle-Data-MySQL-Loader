
-- find top 10 highest reveue generating products

SELECT 
	product_id,
	sum(sale_price) as revenue
FROM retail_orders
GROUP BY product_id
ORDER BY revenue DESC
LIMIT 10;


-- find top 5 highest selling products in each region
WITH top_detail AS
(
SELECT 
	product_id,
    region,
	sum(sale_price) as revenue
FROM retail_orders
GROUP BY product_id,region
)
SELECT * FROM
(
SELECT
	product_id,
    region,
	revenue,
    row_number() OVER (PARTITION BY region ORDER BY revenue DESC) as rn
FROM top_detail
) final
WHERE rn<=5;