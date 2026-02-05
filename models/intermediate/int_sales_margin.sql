SELECT
    products_id,
    purchase_price,
    date_date,
    orders_id,
    quantity,
    revenue,
    quantity * purchase_price AS purchase_cost,
    revenue - (quantity * purchase_price) AS margin
FROM {{ ref('stg_data__product') }}
LEFT JOIN {{ ref ('stg_data__sales') }}
USING (products_id)
ORDER BY date_date