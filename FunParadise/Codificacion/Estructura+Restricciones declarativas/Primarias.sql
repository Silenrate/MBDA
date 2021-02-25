---Claves Primarias

Alter Table Hobbies add constraint Pk_Hobbies Primary key (numero);
Alter Table Empleados add constraint Pk_Empleados Primary key(tdoc,numdoc);
Alter Table Sedes add constraint Pk_Sedes  Primary key (id);
Alter Table Ventas add constraint Pk_Ventas  Primary key (id);
Alter Table Eventos add constraint Pk_Eventos  Primary key (id);
Alter Table Productos add constraint Pk_Productos  Primary key (id);
Alter Table Garantias add constraint Pk_Garantias  Primary key (producto);
Alter Table Facturas add constraint Pk_Facturas Primary key (numero);
Alter Table LineasDeFactura add constraint Pk_LineaFacts  Primary key (factura,venta);
Alter Table Descuentos add constraint Pk_Descuentos  Primary key (factura);
Alter Table Ofrecimientos add constraint Pk_Ofrecimientos  Primary key (sede,evento);
Alter Table Ocurrencias add constraint Pk_Ocurrencias  Primary key (hobby,sede);
Alter Table Telefonos add constraint Pk_Telefonos  Primary key (tdoc,numdoc,telefono);