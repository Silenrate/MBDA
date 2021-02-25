---Tuplas
ALTER TABLE Descuentos ADD CONSTRAINT CK_Desc_Porc
    check(porcentaje > 0 and porcentaje < 100);
ALTER TABLE Empleados ADD CONSTRAINT CK_Emp_Edad
    check(edad > 17 and edad < 63);
ALTER TABLE Facturas ADD CONSTRAINT CK_Fact_val
    check(valor > 0);
ALTER TABLE Productos ADD CONSTRAINT CK_Productos_Precio
    check(precio > 0);
ALTER TABLE Garantias ADD CONSTRAINT CK_Garant_Dur
    check(duracion > 2 and duracion < 25);
Alter table Empleados ADD CONSTRAINT CK_Emp_TipD
    check(TDoc in ('CE','CC','CI'));
Alter table Empleados ADD CONSTRAINT CK_Emp_TCorreo
    check(REGEXP_LIKE(correo,'^[a-zA-Z0-9.-]+@[a-zA-Z0-9.-]'));
Alter table Telefonos ADD CONSTRAINT CK_Tel_TipD
    check(TDoc in ('CE','CC','CI'));
Alter table ofrecimientos add constraint CK_ofr_cap
    check(capacidad >0);
ALTER TABLE Descuentos ADD CONSTRAINT Ck_Descuento_Tip
    check(Tipo in ('G','S','P'));
ALTER TABLE Sedes add constraint  Ck_Sedes_Tip
    check (Tipo in ('P','E','M'));
ALTER TABLE Eventos add constraint  Ck_Eve_Tip
    check (Tipo in ('V','P','M'));
ALTER TABLE EVENTOS add constraint Ck_Eve_Pre
    check (precio > 0 or precio is null);