

CREATE OR REPLACE PROCEDURE
MERGE CLONE dwh.Fechas
select 
	fechas.[date]					#Fecha	PRIMARY KEY,
	fechas.[Year]					Año,
	fechas.Quarter					Trimestre,
	fechas.MonthNumber				NumeroMes,
	fechas.[Month]					NombreMes,
	concat(month,' ',year)			Mes,
	fechas.Day						NumeroDia,
	fechas.[WeekDay]				DiaSemana,
	fechas.[IsoWeek]				Semana,
	festivos.type					TipoFestivo,
	festivos.locale					AmbitoFestivo,
	festivos.locale_name			LocalidadFestivo,
	festivos.description			Festividad
from Crono$Dates fechas
left join (
	select top 1 over (partition by  date order by description)
		[date],
		type,
		locale,
		locale_name,
		description,
		date(date) fecha
	from @@stg.holidays_events 
	
) festivos using ([date] fecha) 
where year between 2013 and 2017 -- Son las fechas disponibles en el ejemplo

