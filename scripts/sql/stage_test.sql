CREATE OR REPLACE TABLE stg.stage_test AS
SELECT 
    id,
    date,
    store_nbr,
    family,
    onpromotion
FROM Crono$Csv(FileName='https://raw.githubusercontent.com/jonathz939/proyecto-retail-bi-unir/main/data/raw/test.csv');
