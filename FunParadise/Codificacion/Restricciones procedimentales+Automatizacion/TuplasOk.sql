---Tuplas Ok

insert into facturas (numero, fecha,valor) values (8, '04-May-2018',25000);
insert into facturas (numero, fecha,valor) values (9, '04-Oct-2018',51500);
insert into facturas (numero, fecha,valor) values (10, '30-Apr-2018',87412);

insert into descuentos (factura, porcentaje, tipo) values (8, 7, 'G');
insert into descuentos (factura, porcentaje, tipo) values (9, 66, 'P');
insert into descuentos (factura, porcentaje, tipo) values (10, 15, 'G');

insert into eventos (id, fecha,factura,nombre,tipo,precio) values (11, '23-Oct-2018', 1, 'Event K4029','M',200000);
insert into eventos (id, fecha,nombre,tipo) values (12, '22-Jun-2018','Event K0049','P');
insert into eventos (id, fecha,nombre,tipo) values (13, '28-Jul-2018','Event K4049','M');

insert into sedes (id, nombre, tipo, ubicacion) values (11, 'Overhold2', 'E', '036 Menomonie Place');
insert into sedes (id, nombre, tipo, ubicacion) values (12, 'Tempsoft2', 'P', '4174 Susan Hill');
insert into sedes (id, nombre, tipo, ubicacion) values (13, 'Flowdesk2', 'E', '2 Cottonwood Park');

insert into productos (id, nombre, precio, factura, sede) values (11, 'Excursion', 8557918, 4, 2);
insert into productos (id, nombre, precio, factura, sede) values (12, 'Yukon XL 2500', 6952820, 6, 10);
insert into productos (id, nombre, precio, factura, sede) values (13, 'S5', 7739792, 4, 1);

insert into empleados (tdoc, numdoc, nombre, edad, correo, sede) values ('CI', 8120455291, 'Bernardo Kowalsky', 52, 'bkowalsky0@e-recht24.de', 2);
insert into empleados (tdoc, numdoc, nombre, edad, correo, sede) values ('CC', 1001017480, 'Bella Gomez', 52, 'bgomez@uol.com.br', 2);
insert into empleados (tdoc, numdoc, nombre, edad, correo, sede) values ('CE', 4046512222, 'Jane Matthews', 41, 'jmatthews2@blogger.com', 6);

insert into telefonos (tdoc, numdoc, numero) values ('CI', 8120455291, 657099126142);
insert into telefonos (tdoc, numdoc, numero) values ('CC', 1001017480, 857349181342);
insert into telefonos (tdoc, numdoc, numero) values ('CE', 4046512222, 340616800168);

insert into garantias (producto, duracion, descripcion) values (11, 5, 'amet lobortis sapien sapien non mi');
insert into garantias (producto, duracion, descripcion) values (12, 7, 'sit amet turpis elementum ligula vehicula consequat morbi a ipsum');
insert into garantias (producto, duracion, descripcion) values (13, 18, 'massa volutpat convallis morbi odio odio elementum eu interdum eu');