WITH orders_ship AS (
    SELECT*
FROM {{ ref('int_orders_margin') }}
LEFT JOIN {{ ref('stg_data__ship') }}
USING (orders_id)
)

SELECT
    orders_id, 
    date_date, 
    ROUND((margin + shipping_fee + shipping_fee_1 - logcost - ship_cost),1) AS operational_margin
FROM orders_ship
    ORDER BY orders_id DESC