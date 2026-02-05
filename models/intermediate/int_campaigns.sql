SELECT *
 FROM {{ref('stg_data__adwords')}}
 UNION ALL
 SELECT *
 FROM {{ ref('stg_data__criteo')}}
 UNION ALL 
 SELECT *
 FROM {{ ref('stg_data__facebook')}}
 UNION ALL 
 SELECT *
 FROM {{ ref('stg_data__bing') }}