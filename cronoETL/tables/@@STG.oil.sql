CREATE OR REPLACE TABLE @@STG.oil AS
SELECT 
    date,
    dcoilwtico
FROM Crono$Csv(FileName='@@GITHUB/oil.csv');
