
-- Use the `ref` function to select from other models

select *
from {{ ref('my_first_dbt_model') }}
union all
select 7 as id, 'CM' as state, '2020-05-04 01:02:00.000'::timestamp as updated_at


--where id = 1