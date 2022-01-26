select sum(C_ACCTBAL) / count(*) as total_count
 from "SNOWFLAKE_SAMPLE_DATA"."TPCH_SF100"."CUSTOMER"
 
 having sum(C_ACCTBAL) / count(*) < 100000000