with 

source as (

    select * from {{ source('raw', 'product') }}

),

renamed as (

    select
        products_id,
        purchse_price

    from source

)

select products_id,
CAST (purchse_price as FLOAT64) as purchase_price
from renamed
