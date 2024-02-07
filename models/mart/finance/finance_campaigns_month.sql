with fcm as (
    select *, extract (month from date_date) AS mes
    from {{ref("finance_campaigns_day")}}
)

select 
mes, 
ROUND(sum(ads_margin),2) AS ads_margin,
ROUND(sum(avg_basket),2) AS avg_basket,
ROUND(sum(operational_margin),2) AS operational_margin,
ROUND(sum (nb_orders),2) AS nb_orders,
ROUND(sum(revenue),2) AS revenue,
ROUND(sum(ads_click),2) AS ads_click,
ROUND(sum(ads_impression),2) AS ads_impression,
ROUND(sum(ads_cost),2) AS ads_cost
from fcm
group by mes
order by mes