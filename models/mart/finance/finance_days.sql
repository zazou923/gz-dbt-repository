SELECT
   date_date,
   ROUND(SUM(operational_margin),1) as operational_margin,
   ROUND(SUM(margin),1) as margin,
   ROUND(SUM(orders_id),1) AS tot_number_of_transactions,
   ROUND(SUM(revenue),1) AS tot_revenue,
   ROUND(AVG(revenue),1) AS avg_basket,
   ROUND(SUM(purchase_cost),1) as purchase_cost,
   ROUND(SUM(shipping_fee),1) as shipping_fees,
   ROUND(SUM(logcost),1) as logcost,
   ROUND(SUM(nb_product),1) as qty_product_sold,
FROM {{ ref('int_orders_operational') }}
   GROUP BY date_date
   ORDER BY date_date DESC



