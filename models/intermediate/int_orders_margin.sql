select 
orders_id, date_date,
SUM(revenue) AS revenue,
SUM(quantity) AS quantity, 
SUM(purchase_cost) AS purchase_cost,
SUM(margin) AS margin
from {{ref("int_sales_margin")}}
group by orders_id, date_date