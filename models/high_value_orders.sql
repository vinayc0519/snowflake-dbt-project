select *
from {{ ref('customer_orders') }}
where amount > 700