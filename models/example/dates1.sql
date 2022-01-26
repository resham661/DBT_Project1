select O_ORDERDATE, 
    sum(O_TOTALPRICE) as cumulative_sales 
from "SNOWFLAKE_SAMPLE_DATA"."TPCH_SF1"."ORDERS" 
 
group by O_ORDERDATE order by O_ORDERDATE