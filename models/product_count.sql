SELECT

 {{ dbt_utils.star(from=ref('expensive_products')) }}
FROM {{ ref('expensive_products') }}