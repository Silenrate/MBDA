---Tablas
CREATE TABLE Hobbies ( numero number(5) NOT NULL ,nombre varchar2(100)NOT NULL,referencia xmltype);
CREATE TABLE Empleados (tdoc varchar2(2) NOT NULL ,numdoc varchar2(10) NOT NULL ,nombre varchar2(100) NOT NULL ,edad number(3) NOT NULL ,correo varchar2(100) NOT NULL ,sede number(5));
CREATE TABLE Sedes (id number(5) NOT NULL, nombre varchar2(100) NOT NULL, tipo char(1) NOT NULL, ubicacion varchar2(50));
CREATE TABLE Ocurrencias(hobby number(5) NOT NULL,sede number(5) NOT NULL); 
CREATE TABLE Eventos (id varchar2(5) NOT NULL , fecha date NOT NULL ,nombre varchar2(50) NOT NULL,tipo char(1) NOT NULL,precio number(15));
CREATE TABLE Productos (id varchar2(5) NOT NULL ,nombre varchar2(100) NOT NULL,sede number(5) NOT NULL ,precio number(15) NOT NULL);
CREATE TABLE Garantias (producto varchar2(5) NOT NULL ,duracion number(3) NOT NULL ,descripcion varchar2(200));
CREATE TABLE Facturas (numero number(5) NOT NULL ,fecha  date NOT NULL,valor number(15) NOT NULL);
CREATE TABLE Descuentos (factura number(5) NOT NULL,porcentaje number(2) NOT NULL, tipo varchar2(1) NOT NULL);
CREATE TABLE Ofrecimientos  (sede number(5) NOT NULL , evento varchar2(5) NOT NULL, capacidad number(5) NOT NULL);
CREATE TABLE Telefonos (tdoc varchar2(2) NOT NULL , numdoc varchar2(10) NOT NULL, telefono varchar2(12) NOT NULL );
CREATE TABLE Ventas (id varchar2(5) NOT NULL ,precio number(10));
CREATE TABLE LineasDeFactura (factura number(5) NOT NULL ,venta varchar2(5),cantidad number(5) NOT NULL,total NUMBER(15) NOT NULL);
