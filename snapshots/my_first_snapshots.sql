{% snapshot my_first_snapshots %}
    {{
        config(
            target_database='dbt_prac',
            target_schema='snapshots',
            unique_key='id',

            strategy='timestamp',
            updated_at='updated_at',
        )
    }}

    -- Pro-Tips: Use sources in snapshots!
    select * from {{ ref('my_first_dbt_model') }}

{% endsnapshot %}