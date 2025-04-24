CREATE OR REPLACE TABLE @@STG.ventas AS
SELECT 
    id,
    date,
    store_nbr,
    family,
    sales,
    onpromotion
FROM Crono$Csv(FileName='C:\Users\jonathzambrano\Documents\PROYECTOUNIR\DATASET\train.csv') materialize into stg.tmpventas tmpventas;
