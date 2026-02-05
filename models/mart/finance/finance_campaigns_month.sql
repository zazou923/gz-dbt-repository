Select
    DATE_TRUNC(date_date, month) as month,
    SUM (ads_margin) as ads_margin,
    SUM (average_basket) as average_basket,
    SUM (operational_margin) as operational_margin,
    SUM (ads_cost) as ads_cost,
    SUM (ads_impression) as ads_impression,
    SUM (ads_clicks) as ads_clicks,
    SUM (quantity) as quantity,
    SUM (revenue) as revenue,
    SUM (purchase_cost) as purchase_cost, 
    SUM (margin) as margin,
    SUM (shipping_fees) as shipping_fees,
    SUM (log_cost) as log_cost,
    SUM (ship_cost) as ship_cost
FROM {{ ref('finance_campaigns_day') }}
GROUP BY month