-- This is auto-generated code
SELECT
    TOP 100 *
FROM
    OPENROWSET(
        BULK 'https://ecommprojstorage.dfs.core.windows.net/olist-container/silver/',
        FORMAT = 'PARQUET'
    ) AS result1


-- https://ecommprojstorage.blob.core.windows.net/olist-container/silver/part-00003-tid-3347300734906516168-b6224500-0194-4c8d-9e39-8beac2ec610c-438-1.c000.snappy.parquet

create schema gold

create view gold.final
as 
SELECT
     *
FROM
    OPENROWSET(
        BULK 'https://ecommprojstorage.dfs.core.windows.net/olist-container/silver/',
        FORMAT = 'PARQUET'
    ) AS result2


SELECT * from gold.final




-- creating another view
create view gold.final2
as 
SELECT
     *
FROM
    OPENROWSET(
        BULK 'https://ecommprojstorage.dfs.core.windows.net/olist-container/silver/',
        FORMAT = 'PARQUET'
    ) AS result1
where order_status = 'delivered'


SELECT * from gold.final2








