select date_date,
orders_id,
s.products_id,
round((s.revenue-p.purchase_price),2) as margin,
round((s.quantity*p.purchase_price),2) as purchase_cost
from {{ref("stg_raw__sales")}} as s
join {{ref("stg_raw__product")}} as p 
using (products_id)
