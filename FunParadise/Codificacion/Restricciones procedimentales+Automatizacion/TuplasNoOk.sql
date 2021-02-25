---Tuplas NoOk

insert into facturas (numero, fecha) values (8, '04-May-2018',-25000);
insert into facturas (numero, fecha) values (9, '04-Oct-2018',-51500);
insert into facturas (numero, fecha) values (10, '30-Apr-2018',0);

insert into descuentos (factura, porcentaje, tipo) values (8, -15, 'G');
insert into descuentos (factura, porcentaje, tipo) values (9, 166, 'P');
insert into descuentos (factura, porcentaje, tipo) values (10, 100, 'G');

insert into eventos (id,fecha,factura,nombre,tipo,precio) values (11, '23-Oct-2018', 1, 'Event 14049','M',-200000);
insert into eventos (id, fecha,nombre,tipo) values (12, '22-Jun-2018','Event 10049','X');
insert into eventos (id, fecha,nombre,tipo) values (13, '28-Jul-2018','Event 44049','A');

insert into sedes (id, nombre, tipo, ubicacion) values (11, 'Overhold', 'A', '036 Menomonie Place');
insert into sedes (id, nombre, tipo, ubicacion) values (12, 'Tempsoft', 'B', '4174 Susan Hill');
insert into sedes (id, nombre, tipo, ubicacion) values (13, 'Flowdesk', 'C', '2 Cottonwood Park');

insert into productos (id, nombre, precio, factura, sede) values (11, 'Excursion', -8557918, 4, 2);
insert into productos (id, nombre, precio, factura, sede) values (12, 'Yukon XL 2500', 0, 6, 10);
insert into productos (id, nombre, precio, factura, sede) values (13, 'S5', -7739792, 4, 1);

insert into empleados (tdoc, numdoc, nombre, edad, correo, sede) values ('CE', 8120927291, 'Bernardo Kowalsky', 74, 'bkowalsky0@e-recht24.de', 2);
insert into empleados (tdoc, numdoc, nombre, edad, correo, sede) values ('CC', 4514077041, 'Bella Gomez', 15, 'bgomez@uol.com.br', 2);
insert into empleados (tdoc, numdoc, nombre, edad, correo, sede) values ('TI', 8600746114, 'Jane Matthews', 41, 'jmatthews2@blogger.com', 6);

insert into telefonos (tdoc, numdoc, numero) values ('TI', 8120927291, 657099126142);
insert into telefonos (tdoc, numdoc, numero) values ('NI', 4514077041, 857349181342);
insert into telefonos (tdoc, numdoc, numero) values ('EC', 8514077041, 340616800168);

insert into garantias (producto, duracion, descripcion) values (11, 2, 'amet lobortis sapien sapien non mi');
insert into garantias (producto, duracion, descripcion) values (12, 50, 'sit amet turpis elementum ligula vehicula consequat morbi a ipsum');
insert into garantias (producto, duracion, descripcion) values (13, -1, 'massa volutpat convallis morbi odio odio elementum eu interdum eu');
