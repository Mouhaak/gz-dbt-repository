select 
date_date,
SUM(ads_cost) AS ads_cost,
SUM(impression) AS ads_impression,
SUM(click) AS ads_click
from {{ref("int_campaigns")}}
group by date_date

