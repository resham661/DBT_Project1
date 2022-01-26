with orders as(
    SELECT *
    FROM {{ source('sample','orders') }}
)

select distinct 
    o_orderdate,
    sum(o_totalprice) over (order by o_orderdate) as cumulative_sales
FROM orders O 

{% if target.name == 'development' %}
    where year(o_orderdate) = 1996
{% endif %}

ORDER BY  O.O_ORDERDATE