select
        orders_id,
        shipping_fee,
        shipping_fee_1,
        logcost,
        CAST (ship_cost as FLOAT64) as ship_cost
 from {{ source('gz_raw_data', 'raw_gz_ship') }}
