
SELECT * from sys.database_credentials


CREATE MASTER KEY ENCRYPTION BY PASSWORD = 'Pa$$c0de';



CREATE DATABASE SCOPED CREDENTIAL shivamaniolist WITH IDENTITY = 'Managed Identity';


CREATE EXTERNAL FILE FORMAT extfileformat WITH (
    FORMAT_TYPE = PARQUET,
    DATA_COMPRESSION = 'org.apache.hadoop.io.compress.SnappyCodec'
);

CREATE EXTERNAL DATA SOURCE goldlayer WITH (
    LOCATION = 'https://ecommprojstorage.dfs.core.windows.net/olist-container/gold',
    CREDENTIAL = shivamaniolist
);


CREATE EXTERNAL TABLE gold.finaltable WITH (
        LOCATION = 'finaldataserving', -- the folder
        DATA_SOURCE = goldlayer,
        FILE_FORMAT = extfileformat
) AS
SELECT * FROM gold.final2;



SELECT * from gold.finaltable;
