---Claves Foraneas
Alter Table Ocurrencias add constraint Fk_Ocur_Sed foreign key(sede) references sedes(id);
Alter Table Ocurrencias add constraint Fk_Ocur_Hob foreign key(hobby) references hobbies(numero);
Alter Table Telefonos add constraint Fk_Tel_Emp foreign key(tdoc,numdoc) references Empleados(tdoc,numdoc);
Alter Table Ofrecimientos add constraint Fk_Ofr_Sed foreign key(sede) references sedes(id);
Alter Table Ofrecimientos add constraint Fk_Ofr_Eve foreign key(evento) references eventos (id);
Alter Table Empleados add constraint Fk_Emp_Sed foreign key(sede) references sedes(id);
Alter Table Eventos add constraint Fk_Eve_Ven foreign key(id) references Ventas(id);
Alter Table Productos add constraint Fk_Pro_Ven foreign key(id) references Ventas(id);
Alter Table Productos add constraint Fk_Pro_Sed foreign key(sede) references Sedes(id);
Alter Table LineasDeFactura add constraint Fk_LineaFac_Fact foreign key(factura) references Facturas(numero);
Alter Table LineasDeFactura add constraint Fk_LineaFac_Ven foreign key(venta) references Ventas(id);
Alter Table Garantias add constraint Fk_Gar_Pro foreign key(producto) references productos(id);
Alter Table Descuentos add constraint Fk_Des_Fac foreign key(factura) references facturas(numero);