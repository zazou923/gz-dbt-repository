SELECT
   date_date,
   COUNT(orders_id) AS tot_number_of_transactions,
   SUM(revenue) AS tot_revenue,
   AVG(revenue) AS avg_basket,
   SUM(operational_margin) as operational_margin,
   SUM(purchase_cost) as purchase_cost,
   SUM(shipping_fee+shipping_fee_1) as shipping_fees,
   SUM(logcost) as logcost,
   COUNT(products_id) as qty_product_sold,
FROM {{ ref('int_orders_operational') }}
   GROUP BY date_date



