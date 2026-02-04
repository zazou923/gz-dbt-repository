SELECT *,
    revenue * quantity AS purchase_cost,
    revenue - (revenue*quantity) AS margin
FROM {{ ref('stg_data__product') }}
LEFT JOIN {{ ref ('stg_data__sales') }}
USING (products_id)