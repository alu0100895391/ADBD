CREATE OR REPLACE FUNCTION function()
RETURNS TRIGGER AS $REALIZA_TAREA$
BEGIN
IF EXISTS 
	(SELECT *
	FROM SE_FORMA
	WHERE (empleado_id_trabajador = NEW.empleado_id_trabajador) AND (tarea_id_tarea=NEW.tarea_id_tarea))
THEN
RETURN NEW;
END IF;
RAISE EXCEPTION 'Un empleado no puede realizar una tarea sin antes formarse en un curso relacionado con esa tarea';
RETURN NULL;
END;

$REALIZA_TAREA$ language plpgsql;


CREATE TRIGGER REALIZA_TAREA
		BEFORE INSERT ON REALIZA
		FOR EACH ROW
		EXECUTE PROCEDURE function();
