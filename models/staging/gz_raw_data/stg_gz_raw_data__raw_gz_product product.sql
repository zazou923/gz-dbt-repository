select
    CAST (purchSE_PRICE as float64) as purchase_price,
    SUM (products_id)
from {{ source('gz_raw_data', 'raw_gz_product product') }}
    GROUP BY purchase_price