with 

source as (

    select * from {{ source('raw', 'ship') }}

),

renamed as (

    select
        orders_id,
        shipping_fee,
      
        logcost,
        ship_cost

    from source

)

select * 
CAST (ship_cost as FLOAT64)
from renamed
