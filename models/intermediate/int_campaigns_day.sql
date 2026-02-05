SELECT
    date_date,
    paid_source, 
    campaign_key,
    campaign_name,
    SUM (ads_cost) as ads_cost,
    sum (impression) as ads_impression,
    sum (click) as ads_clicks
FROM {{ref('int_campaigns')}}
    GROUP BY date_date, paid_source, campaign_key, campaign_name
ORDER BY date_date