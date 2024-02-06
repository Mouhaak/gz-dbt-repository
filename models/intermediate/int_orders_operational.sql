select omargint.orders_id, 
omargint.date_date, 
omargint.margin + shipt.shipping_fee - shipt.logcost - shipt. ship_cost AS operational_margin
from {{ref("int_orders_margin")}} omargint
join {{ref("stg_raw__ship")}} AS shipt
using (orders_id)