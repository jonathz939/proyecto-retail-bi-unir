CREATE OR REPLACE TABLE @@stg.stores AS
SELECT 
    store_nbr,
    city,
    state,
    type,
    cluster
FROM Crono$Csv(FileName='@@GITHUB/stores.csv');