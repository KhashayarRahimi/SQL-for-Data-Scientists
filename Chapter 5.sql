# First Solution
SELECT *
FROM farmers_market.vendor
INNER JOIN farmers_market.vendor_booth_assignments ON vendor.vendor_id = vendor_booth_assignments.vendor_id
ORDER BY vendor_name, market_date

#Second Solution
SELECT *
FROM farmers_market.vendor
LEFT JOIN farmers_market.vendor_booth_assignments ON vendor.vendor_id = vendor_booth_assignments.vendor_id
WHERE vendor_booth_assignments.vendor_id > 0
ORDER BY vendor_name, market_date

------------------------------------

SELECT *
FROM farmers_market.customer AS c
RIGHT JOIN farmers_market.customer_purchases AS cp
ON c.customer_id = cp.customer_id

SELECT c.*, cp.*
FROM farmers_market.customer_purchases AS cp
LEFT JOIN farmers_market.customer AS c
ON cp.customer_id = c.customer_id
