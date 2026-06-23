{% snapshot employee_salary_snapshot %}

{{
    config(
        target_schema='SALES',
        unique_key='EMP_ID',
        strategy='check',
        check_cols=['SALARY']
    )
}}

SELECT
    EMP_ID,
    EMP_NAME,
    SALARY
FROM TRAINING_DB.SALES.EMPLOYEE_SNAPSHOT_SOURCE

{% endsnapshot %}