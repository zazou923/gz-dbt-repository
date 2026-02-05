{{ dbt_utils.union_relations(

    relations=[ref('stg_data__adwords'), ref('stg_data__criteo'), ref('stg_data__facebook'), ref('stg_data__bing')]

) }}
