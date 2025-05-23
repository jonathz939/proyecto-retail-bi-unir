-- Son los datos de las festividades locales ("feriados")


CREATE OR REPLACE TABLE @@STG.holidays_events AS
SELECT 
    date,
    type,
    locale,
    locale_name,
    description,
    transferred
FROM Crono$Csv(FileName='@@GITHUB/holidays_events.csv');
