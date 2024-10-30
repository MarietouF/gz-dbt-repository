SELECT 
DATE_TRUNC(date_date,month) as datemonth,
SUM(operational_margin-ads_cost) as ads_margin,
AVG(average_basket) as average_basket,
SUM(operational_margin) as operational_margin,
SUM(ads_cost) as ads_cost,
SUM(ads_impression) as ads_impression,
SUM(ads_click) as ads_click,
SUM(quantity) as quantity,
SUM(revenue) as revenue,
SUM(purchase_cost) as purchase_cost,
SUM(margin) as margin,
SUM(shipping_fee) as shipping_fee,
SUM(logcost) as logcost,
SUM(ship_cost) as ship_cost
FROM {{ref("finance_campaigns_day")}}
GROUP BY date_date