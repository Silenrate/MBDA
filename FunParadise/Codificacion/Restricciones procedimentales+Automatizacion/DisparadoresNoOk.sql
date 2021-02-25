---Disparadores NoOk
--TG_UPDATE_EVENTOS
update eventos set nombre = 'Event 160' where id = 1;
update eventos set tipo = 'E' where id = 7;
select * from eventos;
--TG_DELETE_EVENTOS
delete from eventos where id = 4;
--TG_UPDATE_SEDES
Update sedes set tipo = 'P' where id = 1;
Update sedes set id = 27 where id = 2;
--TG_DELETE_SEDES
Delete from sedes where id = 1;