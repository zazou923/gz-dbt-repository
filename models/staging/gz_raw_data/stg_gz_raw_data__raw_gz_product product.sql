with 

source as (

    select * from {{ source('gz_raw_data', 'raw_gz_product product') }}

),

renamed as (

    select

    from source

)

select * from renamed