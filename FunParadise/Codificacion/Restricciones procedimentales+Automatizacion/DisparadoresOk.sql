---DisparadoresOk

--TG_INSERT_EVENTOS
insert into eventos (nombre,tipo,precio,fecha) values ('Event 16059','M',11000,'10-MAR-2019');
insert into eventos (nombre,tipo,precio,fecha) values ('Event 16058','P',11002,'11-FEB-2019');
--TG_UPDATE_EVENTOS
update eventos set tipo = 'M' where id = 5;
update eventos set tipo = 'M' where id = 12;
update eventos set tipo = 'M' where id = 2;
update eventos set nombre = 'Event 16051', tipo = 'M' where id = 4;
--TG_DELETE_EVENTOS
delete from eventos where id = 2;
--TG_UPDATE_SEDES
Update sedes set tipo = 'M' where id = 1;
Update sedes set ubicacion = 'Calle 22 Noreste A' where id = 2;
Update sedes set ubicacion = 'Calle 32 Noreste B' where id = 3;
Update sedes set tipo = 'M' where id = 10;
--TG_DELETE_SEDES
Delete from sedes where tipo = 'E';