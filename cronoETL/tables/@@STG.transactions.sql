CREATE OR REPLACE TABLE @@STG.transactions AS
SELECT 
    date,
    store_nbr,
    transactions
FROM Crono$Csv(FileName='@@GITHUB/transactions.csv');
