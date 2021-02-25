
---Crud E

Create or replace Package PC_EVENTO is
procedure Ad_Evento(xNombre in Varchar2, xTipo in char, xPrecio in number, xFecha in Date);
procedure Mod_Evento(xNombre in Varchar2, xtipo in char, xid in Varchar2);
procedure EL_Evento(xId in Varchar2);
function Co_EventoSede return SYS_REFCURSOR;
function Co_EventoOfr return SYS_REFCURSOR;
end PC_EVENTO;
/


---Crud I


Create or replace Package Body PC_EVENTO IS
    procedure Ad_Evento(xNombre in Varchar2, xTipo in char, xPrecio in number, xFecha in Date) IS
        Begin
            Insert into Eventos(nombre,tipo,precio,fecha) Values(xNombre,xTipo,xPrecio,xFecha);
            COMMIT;
            EXCEPTION
            WHEN OTHERS THEN
                ROLLBACK;
                raise_application_error(-20100,'Error al insertar en evento');
        End;
    procedure Mod_Evento(xNombre in Varchar2, xtipo in char, xid in Varchar2) IS
        BEGIN
            IF xNombre is Null Then
                Update Eventos set tipo=xtipo where id = xid;
                COMMIT;
            Elsif xtipo is Null then
                Update Eventos set nombre=xNombre where id=xid;
                COMMIT;
            else
                Update eventos set nombre=xNombre , tipo=xtipo where id = xid;
                COMMIT;
            end if;
            EXCEPTION
            WHEN OTHERS THEN
                ROLLBACK;
                raise_application_error(-20101,'Error al modificar en evento');
        END;
    procedure EL_Evento(xId in Varchar2) IS
        BEGIN
            Delete from Eventos where id = xId;
            Commit;
            EXCEPTION
            WHEN OTHERS THEN
                ROLLBACK;
                raise_application_error(-20101,'Error al eliminar en evento');
        END;
    
    function Co_EventoSede return SYS_REFCURSOR is ConsultaEveSed Sys_Refcursor;
        BEGIN
            Open ConsultaEveSed for
                Select E.id,E.nombre,E.fecha,Sedes.id,Sedes.Nombre from Sedes,Eventos E where Sedes.Evento
            Return ConsultaEveSed;
        END;
            
        
End PC_EVENTO;
/
            
    



