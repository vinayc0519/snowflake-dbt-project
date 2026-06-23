{% snapshot product_price_snapshot %}

{{
  config(

    target_schema='SALES',
    unique_key='PRODUCT_ID',
    strategy='check',
    check_cols=['PRICE']
  )

}}
select
PRODUCT_ID,
PRODUCT_NAME,
PRICE

FROM TRAINING_DB.SALES.PRODUCT_SOURCE

{% endsnapshot %}