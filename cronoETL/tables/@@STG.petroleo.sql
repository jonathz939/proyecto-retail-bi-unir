CREATE OR REPLACE TABLE @@STG.petroleo AS
SELECT 
    date,
    dcoilwtico
FROM Crono$Csv(FileName='@@GITHUB/oil.csv');
