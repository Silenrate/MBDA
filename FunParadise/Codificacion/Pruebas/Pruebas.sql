/*
Soy un administrador de eventos, estoy incorporado con el paquete PA_AdminEvento en la base de datos de Fun Paradise, mi trabajo consiste en revisar si toda la información de un evento es correcta, y en caso de que no lo sea,
comunicarme a un miembro de la junta para que realicen los respectivos cambios. Para hacerlo necesito consultar los eventos ofrecidos en FunParadise, lo cual realizo con el comando (Select PA_AdminEvento.Co_EventoAdmin from dual).
Además de lo que necesito saber, puedo adicionar,modificar y eliminar la informacion de los eventos, esto me permite asegurar que los únicos cambios en la base de datos, son generados por el cliente que creo el evento o por
causas de fuerza mayor como fenómenos naturales y cosas de ese estilo.
Mi trabajo es bastante importante ya que mantiene consistente una de las mayores fuentes de ingresos de FunParadise, la cual corresponde a cada uno de los eventos ofrecidos; sin esto la calidad de FunParadise se veria afectada,
asi como su imagen y buen nombre.

Soy un miembro de la junta directiva, estoy incorporado con el paquete PA_Junta en la base de datos de Fun Paradise, mi trabajo consiste en revisar si los eventos se estan ofreciendo de forma concisa y correcta;
para poder hacerlo necesito saber dos cosas, si los productos que vende la sede van de acuerdo con el evento y si la sede es la mas adecuada para un evento de esa clase.
Para consultar cuales productos que vende la sede ejecutó el comando (Select PA_Junta.Co_SedeVenta from dual) y para saber si la sede debería ofrecer el evento ejecuto el comando (Select PA_Junta.Co_SedeHobby from dual).
Además de lo que necesito saber, puedo adicionar,modificar y eliminar sedes, esto me permite mantener el objetivo de FunParadise sin incluir tiendas que incumplen algunas reglas, en el caso de que alguna sede las incumpla;
entre todos los miembros de la junta directiva se determinará que acción tomar contra la sede.
Mi trabajo es de los más valiosos en FunParadise porque al conocer esto, puedo incorporar nuevos eventos para que FunParadise y cada sede, obtengan mejores ganancias.

Soy un empleado de una tienda de hobbies, estoy incorporado con el paquete PA_Empleado en la base de datos de Fun Paradise, mi trabajo consiste en vender productos y soy responsable de algunas tareas de los eventos de la tienda;
puesto que no siempre tendré a mi disposición todos los productos, para beneficio del cliente ubicaré el producto que él busca en otras sedes, para hacerlo ejecuto el comando (Select PA_Empleado.Co_SedesProd from dual), esta forma
es mucho mas eficiente que como suelo hacerlo, porque puedo comunicarme con otras tiendas sin tenerlas asociadas a mi tienda.
No siempre puedo estar al tanto de todo lo que ofrece la tienda, por lo cual necesitaré consultar los eventos que ofrece mi tienda; para esto ejecuto el comando (Select PA_Empleado.Co_EventoEmple from dual), de esta forma me
entero de muchas más cosas que preguntándole a mi jefe, ya que puedo consultar todos los eventos de la tienda a largo plazo.
Mi trabajo en FunParadise no corresponde a un rol gerencial, pero permite la movilidad del mayor cliente de FunParadise, las sedes, permitiéndonos optimizar recursos de varias tiendas al mismo tiempo.

Para determinar el rendimiento de la base de datos, asi como para diseñar mejores estrategias en las políticas de FunParadise, el Gerente General puede realizar específicamente tres consultas:
- Consultar la sede que vende menos productos para poder implementar un plan de mejoramiento para aquella sede (Select * from PeorSede).
- Consultar evento que se ofrece en mas lugares para poder dar ofertas ofertas especiales durante ese evento (Select * from MejorEvento).
- Consultar facturas cuyo valor sea mayor que el promedio para poder determinar la epoca de mas ganancias (Select * from MejorEpoca).
*/