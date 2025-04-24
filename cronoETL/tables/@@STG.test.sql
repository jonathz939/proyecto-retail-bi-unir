CREATE OR REPLACE TABLE @@STG.test AS
SELECT 
    id,
    date,
    store_nbr,
    family,
    onpromotion
FROM Crono$Csv(FileName='@@GITHUB/test.csv');
