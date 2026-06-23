{{ config(
    materialized='incremental',
    unique_key='ORDER_ID'
) }}

SELECT
    ORDER_ID,
    CUSTOMER_NAME,
    AMOUNT
FROM SALES_INCREMENTAL

{% if is_incremental() %}
WHERE ORDER_ID >
(
    SELECT COALESCE(MAX(ORDER_ID),0)
    FROM {{ this }}
)
{% endif %}