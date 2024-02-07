with uniont as (

select finday.*, intcampday.ads_cost, intcampday.ads_impression, intcampday.ads_click
from {{ref("finance_days")}} as finday
join {{ref("int_campaigns_day")}} as intcampday
using (date_date)

)

select *,
ROUND(operational_margin - ads_cost,2) AS ads_margin
from uniont