SELECT
product_id,
product_name,
CASE WHEN product_qty_type = "Unit"
THEN "unit"
ELSE "bulk"
END AS prod_qty_type_condensed
FROM farmers_market.product

---------------------

SELECT
product_id,
product_name,
CASE WHEN product_qty_type = "Unit"
THEN "per unit"
ELSE "bulk"
END AS prod_qty_type_condensed,
CASE WHEN LOWER(product_name) LIKE '%pepper%'
THEN 1
ELSE 0
END AS pepper_flag
FROM farmers_market.product

---------------------

