select 
t1.*, 
t2.purchase_price, 
t1.quantity * t2.purchase_price AS purchase_cost,
t1.revenue - t2.purchase_price AS margin
from {{ref("stg_raw__sales")}} AS t1
left join {{ref("stg_raw__product")}} AS t2
using (products_id)