CREATE OR REPLACE TABLE stg.stage_transactions AS
SELECT 
    date,
    store_nbr,
    transactions
FROM Crono$Csv(FileName='https://raw.githubusercontent.com/jonathz939/proyecto-retail-bi-unir/main/data/raw/transactions.csv');
