SELECT product_id, customer_id, quantity * cost_to_customer_per_qty AS price
FROM farmers_market.customer_purchases
WHERE customer_id = 4 or customer_id = 9

SELECT product_id, customer_id, vendor_id, quantity * cost_to_customer_per_qty AS price
FROM farmers_market.customer_purchases
WHERE vendor_id >= 8 AND vendor_id <= 10

SELECT product_id, customer_id, vendor_id, quantity * cost_to_customer_per_qty AS price
FROM farmers_market.customer_purchases
WHERE vendor_id BETWEEN 8 and 10

SELECT 
    market_date,
    customer_id,
    vendor_id,
    quantity * cost_to_customer_per_qty price
FROM
    farmers_market.customer_purchases
WHERE
    market_date IN (SELECT 
            market_date
        FROM
            farmers_market.market_date_info
        WHERE
            market_rain_flag = 0)
LIMIT 10

SELECT 
    market_date,
    customer_id,
    vendor_id,
    quantity * cost_to_customer_per_qty price
FROM
    farmers_market.customer_purchases
WHERE
    market_date NOT IN (SELECT 
            market_date
        FROM
            farmers_market.market_date_info
        WHERE
            market_rain_flag = 1)
LIMIT 10