select
    date_date,
    orders_id,
    pdt_id as prodct_id,
    revenue,
    quantity,
from {{ source('gz_raw_data', 'raw_gz_sales sales') }}