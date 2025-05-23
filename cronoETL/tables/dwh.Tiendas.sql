
CREATE OR REPLACE PROCEDURE
MERGE CLONE dwh.Tiendas(IdTienda)
select 
	stores.store_nbr					#CodigoTienda,
	$'Tienda {Ciudad} ({CodigoTienda})' Tienda,
	stores.city							Ciudad,
	stores.state						Estado,
	stores.type							ClasficacionABC,
	stores.cluster						ClusterDeTienda
from @@stg.stores

