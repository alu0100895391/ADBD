CREATE OR REPLACE FUNCTION crear_nomina()
RETURNS TRIGGER AS $CREAR_NOMINA$
DECLARE 
v_id INTEGER;
BEGIN

	SELECT MAX(id_nomina) INTO v_id
FROM NOMINA; 
v_id:=v_id+1;
	INSERT INTO NOMINA VALUES (v_id,0,0,0);
	INSERT INTO COBRA VALUES(NEW.id_trabajador,v_id);
RETURN NEW;
END;
$CREAR_NOMINA$ language plpgsql;


CREATE TRIGGER CREAR_NOMINA 
AFTER INSERT ON EMPLEADO
FOR EACH ROW
EXECUTE PROCEDURE crear_nomina();