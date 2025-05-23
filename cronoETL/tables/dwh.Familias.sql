


CREATE OR REPLACE PROCEDURE
MERGE CLONE dwh.Familias(IdFamilia)
select distinct 
	family #CodigoFamilia		varchar(100),
	family Familia				varchar(100)
from @@stg.train

