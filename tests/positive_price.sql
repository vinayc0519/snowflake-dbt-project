select *
from {{ ref('product_source_model') }}
where Price <=0