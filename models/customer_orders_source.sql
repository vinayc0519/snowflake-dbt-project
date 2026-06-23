SELECT
    o.ORDER_ID,
    c.CUSTOMER_NAME,
    c.CITY,
    o.AMOUNT
FROM {{ source('sales_source', 'ORDERS') }} o
JOIN {{ source('sales_source', 'CUSTOMERS') }} c
ON o.CUSTOMER_ID = c.CUSTOMER_ID