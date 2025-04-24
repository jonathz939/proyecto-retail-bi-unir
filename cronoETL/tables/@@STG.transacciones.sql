CREATE OR REPLACE TABLE @@STG.transacciones AS
SELECT 
    date,
    store_nbr,
    transactions
FROM Crono$Csv(FileName='@@GITHUB/transactions.csv');
