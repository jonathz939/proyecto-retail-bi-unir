CREATE OR REPLACE TABLE @@STG.ventas AS
SELECT 
    id,
    date,
    store_nbr,
    family,
    sales,
    onpromotion
FROM Crono$Csv(FileName='@@root\..\DATA\raw\train.csv') materialize into stg.tmpventas tmpventas;
