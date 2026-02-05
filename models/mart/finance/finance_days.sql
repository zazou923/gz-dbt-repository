SELECT
   date_date,
   ROUND(SUM(margin),1) as margin,
   ROUND(COUNT(orders_id),1) AS tot_number_of_transactions,
   ROUND(SUM(revenue),1) AS tot_revenue,
   ROUND(AVG(revenue),1) AS avg_basket,
   ROUND(SUM(operational_margin),1) as operational_margin,
   ROUND(SUM(purchase_cost),1) as purchase_cost,
   ROUND(SUM(shipping_fee+shipping_fee_1),1) as shipping_fees,
   ROUND(SUM(logcost),1) as logcost,
   ROUND(COUNT(products_id),1) as qty_product_sold,
FROM {{ ref('int_orders_operational') }}
   GROUP BY date_date



