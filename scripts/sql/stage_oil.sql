CREATE OR REPLACE TABLE stg.stage_oil AS
SELECT 
    date,
    dcoilwtico
FROM Crono$Csv(FileName='https://raw.githubusercontent.com/jonathz939/proyecto-retail-bi-unir/main/data/raw/oil.csv');
