---Claves Unicas

Alter Table Hobbies add constraint Uk_Hobbies Unique(nombre);
Alter Table Sedes add constraint Uk_Sedes Unique(nombre);
Alter Table Eventos add constraint Uk_Eventos Unique(nombre);
Alter Table Productos add constraint Uk_Productos Unique(nombre);