{{ config (
  post_hook="
       Insert into model_audit
       values('HOOK_DEMO',CURRENT_TIMESTAMP())
"
)
}}

select 
  product_id,
  product_name,
  price
 from product_source
