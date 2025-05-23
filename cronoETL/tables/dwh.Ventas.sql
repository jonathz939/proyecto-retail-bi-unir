

CREATE OR REPLACE PROCEDURE
MERGE CLONE dwh.Ventas(IdVenta)
select 
	Fechas.Fecha				#Fecha,
	Tiendas.CodigoTienda		#CodigoTienda,
	Familias.CodigoFamilia		#CodigoFamilia,
	Tiendas.IdTienda			IdTienda NONUNIQUE REFERENCES dwh.Tiendas,
	Familias.IdFamilia			IdFamilia	NONUNIQUE REFERENCES dwh.Familias,
	v.sales			UnidadesVendidas
from @@stg.train v
inner join dwh.Fechas using (date Fecha)
inner join dwh.Tiendas using (store_nbr CodigoTienda)
inner join dwh.Familias using (family CodigoFamilia)
check snowflake
