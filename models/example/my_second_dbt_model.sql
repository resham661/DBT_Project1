
-- Use the `ref` function to select from other models

select *
from {{ ref('my_first_dbt_model') }}
union all
select 7 as id


--where id = 1