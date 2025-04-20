-- Cargar stores.csv
CREATE OR REPLACE TABLE stg.stage_stores AS
SELECT 
    store_nbr,
    city,
    state,
    type,
    cluster
FROM Crono$Csv('https://github.com/jonathz939/proyecto-retail-bi-unir/raw/main/data/stores.csv');

-- Cargar train.csv
CREATE OR REPLACE TABLE stg.stage_train AS
SELECT 
    id,
    date,
    store_nbr,
    family,
    sales,
    onpromotion
FROM Crono$Csv('https://github.com/jonathz939/proyecto-retail-bi-unir/raw/main/data/train.csv');

-- Cargar transactions.csv
CREATE OR REPLACE TABLE stg.stage_transactions AS
SELECT 
    date,
    store_nbr,
    transactions
FROM Crono$Csv('https://github.com/jonathz939/proyecto-retail-bi-unir/raw/main/data/transactions.csv');

-- Cargar oil.csv
CREATE OR REPLACE TABLE stg.stage_oil AS
SELECT 
    date,
    dcoilwtico
FROM Crono$Csv('https://github.com/jonathz939/proyecto-retail-bi-unir/raw/main/data/oil.csv');

-- Cargar holidays_events.csv
CREATE OR REPLACE TABLE stg.stage_holidays_events AS
SELECT 
    date,
    type,
    locale,
    locale_name,
    description,
    transferred
FROM Crono$Csv('https://github.com/jonathz939/proyecto-retail-bi-unir/raw/main/data/holidays_events.csv');

-- Cargar test.csv
CREATE OR REPLACE TABLE stg.stage_test AS
SELECT 
    id,
    date,
    store_nbr,
    family,
    onpromotion
FROM Crono$Csv('https://github.com/jonathz939/proyecto-retail-bi-unir/raw/main/data/test.csv');
