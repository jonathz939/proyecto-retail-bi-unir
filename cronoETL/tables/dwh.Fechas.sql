

CREATE OR REPLACE PROCEDURE
MERGE CLONE dwh.Fechas
select 
	[date]					#Fecha	PRIMARY KEY,
	[Year]					Año,
	Quarter					Trimestre,
	MonthNumber				NumeroMes,
	[Month]					NombreMes,
	concat(month,' ',year)	Mes,
	Day						NumeroDia,
	[WeekDay]				DiaSemana,
	[IsoWeek]				Semana
from Crono$Dates
where year between 2013 and 2017 -- Son las fechas disponibles en el ejemplo