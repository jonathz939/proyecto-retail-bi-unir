CREATE OR REPLACE TABLE @@STG.eventos AS
SELECT 
    date,
    type,
    locale,
    locale_name,
    description,
    transferred
FROM Crono$Csv(FileName='@@GITHUB/holidays_events.csv');
