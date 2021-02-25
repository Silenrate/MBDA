---Disparadores
--Disparador de insercion en la tabla Sedes(Automatizar)
Create or replace trigger TG_INSERT_SEDES
    before insert on SEDES
    For each row
    declare 
    xid NUMBER(5);
    Begin 
        select max(id) into xid from sedes;
		if xid = 0 or xid is null then
			:new.id := 1;
		else
			:new.id := xid+1;
		end if;       
End;
/
--Disparador de insercion en la tabla Hobbies(Automatizar)
Create or replace trigger TG_INSERT_HOBBIES
    before insert on HOBBIES
    For each row
    declare 
    xnumero NUMBER(5);
    Begin 
        select max(numero) into xnumero from hobbies;
		if xnumero = 0 or xnumero is null then
			:new.numero := 1;
		else
			:new.numero := xnumero+1;
		end if;       
End;
/
--Disparador de insercion en la tabla Facturas(Automatizar)
Create or replace trigger TG_INSERT_FACTURAS
    before insert on FACTURAS
    For each row
    declare 
    xnumero NUMBER(5);
    Begin 
        select max(numero) into xnumero from facturas;
		if xnumero = 0 or xnumero is null then
			:new.numero := 1;
		else
			:new.numero := xnumero+1;
		end if;       
End;
/
--Disparador de eliminacion en la tabla eventos(Restringir)
CREATE OR REPLACE TRIGGER TG_DELETE_EVENTOS
	before delete on eventos
	for each row
	declare
	semanas number(10);
	begin 
	SELECT ceil((current_date - TRUNC (:old.fecha))/7) into semanas FROM DUAL;
	if semanas >= 2 then
		raise_application_error(-20019,'Solo se pueden eliminar los eventos con maximo dos semanas de anticipacion');
    end if;
end;
/
--Disparador de insercion en la tabla eventos(Automatizar)
Create or replace trigger TG_INSERT_EVENTOS
    before insert on eventos 
    For each row
    declare 
    xid VARCHAR2(5);
    Begin 
        select count(ID) into xid from eventos;
		if xid = 0 or xid is null then
			xid := 'E0';
		else
			xid := CONCAT('E',TO_CHAR(xid));
		end if;
		:new.id := xid;
        INSERT INTO VENTAS VALUES(XID,:NEW.PRECIO);        
End;
/

--Disparador de insercion en la tabla productos(Automatizar)
Create or replace trigger TG_INSERT_PRODUCTOS
    before insert on productos 
    For each row
    declare 
    xid VARCHAR2(5);
    Begin 
        select count(ID) into xid from productos;
		if xid = 0 or xid is null then
			xid := 'P0';
		else
			xid := concat('P',TO_CHAR(xid));
		end if;
		:new.id := xid;
        INSERT INTO VENTAS VALUES(XID,:NEW.PRECIO);        
End;
/
--Disparador de modificacion en la tabla eventos(Validar y Restringir)
CREATE OR REPLACE TRIGGER TG_UPDATE_EVENTOS
    before update on eventos
    for each row
    begin
        if :old.tipo  = 'M' then
            raise_application_error(-20016,'Los eventos mixtos no pueden ser modificados');
        elsif :old.tipo = 'P' then
            if :New.id != :old.id or :New.fecha!= :old.fecha or :New.nombre != :old.nombre or :New.precio!=:old.precio then
                raise_application_error(-20017,'Solo se puede cambiar el tipo de un evento presencial');
            elsif :New.tipo != 'M' then
                raise_application_error(-20018,'Solo se puede cambiar el tipo del evento a mixto');
            end if;
        elsif :old.tipo = 'V' then
            if :New.id != :old.id or :New.fecha!= :old.fecha or :New.precio!=:old.precio then
                raise_application_error(-20017,'Solo se puede cambiar el tipo y el nombre de un evento virtual');
            elsif :New.tipo != 'M' then
                raise_application_error(-20018,'Solo se puede cambiar el tipo del evento a mixto');
            end if;
        end if;
end;
/
--Disparador de modificacion en la tabla sedes(Restringir)
CREATE OR REPLACE TRIGGER TG_UPDATE_SEDES
    BEFORE UPDATE ON SEDES
    FOR EACH ROW
    BEGIN
    IF :OLD.ID = :NEW.ID THEN
        IF :NEW.UBICACION IS NULL THEN
            RAISE_APPLICATION_ERROR(-20005,'No se puede cambiar la ubicacion a nula.');
        END IF;
        IF :NEW.TIPO != :OLD.TIPO AND :NEW.TIPO != 'M' THEN
            RAISE_APPLICATION_ERROR(-20002,'Una sede solo puede volverse mixta.');
        END IF;
    ELSE
        RAISE_APPLICATION_ERROR(-20003,'No se puede cambiar la id de una sede.');
    END IF;
    END;
/
--Disparador de eliminacion en la tabla sedes(Restringir)
CREATE OR REPLACE TRIGGER TG_DELETE_SEDES
    BEFORE DELETE ON SEDES
    FOR EACH ROW
    BEGIN
        IF :OLD.TIPO != 'E' THEN
            RAISE_APPLICATION_ERROR(-20004,'Solo se pueden eliminar las sedes que unicamente ofrecen eventos.');
        END IF;
    END;
/