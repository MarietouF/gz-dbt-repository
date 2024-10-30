select date_date,
orders_id,
s.pdt_id,
revenue,
s.quantity,
round((s.revenue-p.purchase_price),2) as margin,
round((s.quantity*p.purchase_price),2) as purchase_cost,
{{ margin_percent('revenue', 's.quantity*p.purchase_price', 2) }} AS margin_percent
from {{ref("stg_raw__sales")}} as s
join {{ref("stg_raw__product")}} as p 
on s.pdt_id=p.products_id
