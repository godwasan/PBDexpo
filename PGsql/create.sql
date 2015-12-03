
CREATE TABLE Peliculas
(
  foto oid,
  codigo NUMERIC,
  nombre VARCHAR(32)
)
WITH (
  OIDS=FALSE
)
ALTER TABLE Peliculas
  OWNER TO postgres;
