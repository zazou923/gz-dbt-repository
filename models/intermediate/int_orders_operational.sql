WITH orders_ship AS (
    SELECT*
FROM {{ ref('int_orders_margin') }}
LEFT JOIN {{ ref('stg_data__ship') }}
USING (orders_id)
)

SELECT
      date_date,
      orders_id,
      shipping_fee,
      shipping_fee_1,
      logcost,
      CAST (ship_cost as FLOAT64) as ship_cost,
      revenue,
      quantity,
      purchase_cost,
      margin,
      products_id,
    ROUND((margin + shipping_fee + shipping_fee_1 - logcost - ship_cost),1) AS operational_margin
FROM orders_ship
    ORDER BY orders_id DESC