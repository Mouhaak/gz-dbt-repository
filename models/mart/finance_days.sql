select date_date, 
ROUND(COUNT(orders_id),2) AS nb_orders,
ROUND(SUM(revenue),2) AS revenue,
ROUND(SUM(revenue) / COUNT(orders_id),2) AS avg_basket,
ROUND(SUM(margin),2) AS margin,
ROUND(SUM(operational_margin),2) AS operational_margin

from {{ref("int_orders_operational")}}
group by date_date
