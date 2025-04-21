CREATE OR REPLACE TABLE stg.stage_train AS
SELECT 
    id,
    date,
    store_nbr,
    family,
    sales,
    onpromotion
FROM Crono$Csv(FileName='https://raw.githubusercontent.com/jonathz939/proyecto-retail-bi-unir/main/data/raw/train.csv');
