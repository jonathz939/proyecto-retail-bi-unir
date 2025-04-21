CREATE OR REPLACE TABLE stg.stage_stores AS
SELECT 
    store_nbr,
    city,
    state,
    type,
    cluster
FROM Crono$Csv(FileName='https://raw.githubusercontent.com/jonathz939/proyecto-retail-bi-unir/main/data/raw/stores.csv');


