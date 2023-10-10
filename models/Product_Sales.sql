



{{ config(materialized='table') }}

WITH Product_Sales as (
select City,STATE,SUM(NA_SALES),SUM(GLOBAL_SALES) FROM PROD.PRODUCT GROUP BY 1,2
)


SELECT * FROM Product_Sales