
CREATE OR REPLACE PROCEDURE
MERGE CLONE dwh.Tiendas(IdTienda)
select 
	store_nbr	#CodigoTienda,
	$'Tienda {Ciudad} ({CodigoTienda})' Tienda,
	city		Ciudad,
	state		Estado,
	type		ClasficacionABC,
	cluster		ClusterDeTienda
from @@stg.stores

