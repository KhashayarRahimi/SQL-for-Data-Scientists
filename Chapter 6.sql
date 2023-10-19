SELECT *
FROM farmers_market.vendor_booth_assignments

SELECT
vendor_id,
count(booth_number) AS count_of_booth_assignments
FROM farmers_market.vendor_booth_assignments
GROUP BY vendor_id

-------------------------------

SELECT
pc.product_category_name,
p.product_name,
min(market_date) AS first_date_available,
max(market_date) AS last_date_available
FROM farmers_market.vendor_inventory vi
INNER JOIN farmers_market.product p
ON vi.product_id = p.product_id
INNER JOIN farmers_market.product_category pc
ON p.product_category_id = pc.product_category_id
WHERE product_category_name = 'Fresh Fruits & Vegetables'

--------------------------------

SELECT
cp.customer_id,
c.customer_first_name,
c.customer_last_name,
SUM(quantity * cost_to_customer_per_qty) AS total_spent
FROM farmers_market.customer c
LEFT JOIN farmers_market.customer_purchases cp
ON c.customer_id = cp.customer_id
GROUP BY
cp.customer_id,
c.customer_first_name,
c.customer_last_name
HAVING total_spent > 50
ORDER BY c.customer_last_name, c.customer_first_name