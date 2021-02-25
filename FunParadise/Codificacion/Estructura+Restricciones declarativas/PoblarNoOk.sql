---Poblar NoOk
insert into Hobbies (numero, nombre) values (1, 123);
insert into Hobbies (numero, nombre) values (2, Automotive);
insert into Hobbies (numero, nombre) values (3, 'Automotive');

insert into facturas (numero, fecha) values (3, '04-May-2018');
insert into facturas (numero, fecha) values (3, '04-Oct-2018');
insert into facturas (numero, fecha) values (2, 39000);

insert into descuentos (factura, porcentaje, tipo) values (1, 7, 'G');
insert into descuentos (factura, porcentaje) values (2, 66);
insert into descuentos (factura, porcentaje, tipo) values (27, 15, 'G');

insert into eventos (id,fecha,factura,nombre,tipo,precio) values (1, '23-Oct-2018', '1', 'Event 14049','Z',200000);
insert into eventos (id, fecha, factura,nombre,tipo,precio) values (1, '08-Jun-2018', 3 ,'Event 15049','P',100000);
insert into eventos (id, fecha, factura,nombre,tipo,precio) values (3, '12-Oct-2018', 8, 777,'V',110000);

insert into sedes (id, nombre, tipo, ubicacion) values (1, 'Overhold', 'E', '036 Menomonie Place');
insert into sedes (id, nombre, tipo, ubicacion) values (1, 'Tempsoft', 'P', '4174 Susan Hill');
insert into sedes (id, nombre, tipo, ubicacion) values ('3', 'Flowdesk', 'A', '2 Cottonwood Park');
insert into sedes (id, tipo, ubicacion) values (4, 'M', '14 Ridge Oak Plaza');

insert into ocurrencias (hobby,sede) values (14,1);
insert into ocurrencias (hobby,sede) values (7,11);
insert into ocurrencias (hobby) values (7);

insert into productos (id, nombre, factura, sede) values (1, 'Excursion', 4, 2);
insert into productos (id, nombre, precio, factura, sede) values (2, 'Yukon XL 2500', 6952820, 6, 10);
insert into productos (id, nombre, precio, factura, sede) values (2, 'S5', 7739792, 4, 1);

insert into ofrecimientos (sede, evento, capacidad) values (6, 6, '27000');
insert into ofrecimientos (sede, evento, capacidad) values (2, 2, 78508);
insert into ofrecimientos (sede, evento, capacidad) values (2, 2, 76617);

insert into empleados (tdoc, numdoc, nombre, edad, correo, sede) values ('CE', 7120927291, 'Berna Kowalski', 52, 'bkowalski0@e-recht24.de', 2);
insert into empleados (tdoc, numdoc, nombre, edad) values ('CC', 3514077041, 'Belia Jehu', 52);
insert into empleados (tdoc, numdoc, nombre, edad, correo) values ('CI', 760074611, 'Jayne Mattheissen', 41, 'jmattheissen2@blogger.com');

insert into telefonos (tdoc, numdoc, numero) values ('CE', 7120927291, 60209912142);
insert into telefonos (tdoc, numdoc, numero) values ('CE', 3514077041, 857349181282);
insert into telefonos (tdoc, numdoc, numero) values ('CC', 3514077141, 180616800168);

insert into garantias (producto, duracion, descripcion) values (1, 5, 'amet lobortis sapien sapien non mi');
insert into garantias (producto, duracion) values (1, 7);
insert into garantias (producto, duracion, descripcion) values (3, '18', 'massa volutpat convallis morbi odio odio elementum eu interdum eu');
