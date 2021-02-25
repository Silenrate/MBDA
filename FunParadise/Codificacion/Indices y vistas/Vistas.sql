Create or replace view PeorSede as Select Sedes.Nombre,Ubicacion,Count(Productos.id) Cantidad 
From Sedes,Productos where Sedes.id = Productos.sede and ROWNUM = 1 Group by sedes.id,sedes.nombre,sedes.ubicacion order by cantidad ;

Create or replace view MejorEvento as select Nombre,Fecha,count(Ofrecimientos.Sede) Cantidad from Eventos,Ofrecimientos 
where Ofrecimientos.evento=Eventos.id and Rownum=1 group by eventos.id,eventos.nombre,eventos.fecha order by cantidad Desc;

Create or replace view MejorEpoca as select numero,fecha,valor from facturas where valor > (Select Avg(valor) from facturas);



