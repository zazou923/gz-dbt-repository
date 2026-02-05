SELECT
    date_date,
    operational_margin - ads_cost as ads_margin,
    average_basket,
    operational_margin,
    ads_cost,
    ads_impression, 
    ads_clicks, 
    quantity,
    revenue,
    purchase_cost,
    margin, 
    shipping_fees,
    log_cost,
    ship_cost,
FROM {{ ref('finance_days') }}
LEFT JOIN {{ ref('int_campaigns_day') }}
USING (date_date)
order by date_date DESC