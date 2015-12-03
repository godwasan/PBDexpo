CREATE OR REPLACE FUNCTION get(pcodigo IN NUMERIC) RETURNS bytea AS $$
DECLARE
poid oid;
BEGIN
select foto into poid from peliculas where codigo = pcodigo;
RAISE NOTICE '%', pcodigo;


RETURN lo_get(oid);
END
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION set(pcodigo IN NUMERIC, pnombre IN VARCHAR , path IN VARCHAR ) RETURNS void AS $$
DECLARE
BEGIN
insert into peliculas values (lo_import(path),pcodigo, pnombre); 

END
$$ LANGUAGE plpgsql;

