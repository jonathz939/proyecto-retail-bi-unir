CREATE OR REPLACE TABLE stg.stage_holidays_events AS
SELECT 
    date,
    type,
    locale,
    locale_name,
    description,
    transferred
FROM Crono$Csv(FileName='https://raw.githubusercontent.com/jonathz939/proyecto-retail-bi-unir/main/data/raw/holidays_events.csv');
