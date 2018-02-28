CREATE USER IF NOT EXISTS 'administrador'@'localhost' IDENTIFIED BY 'administrador123';/*creamos el usuario sino exixte*/
GRANT ALL PRIVILEGES ON VOYVOLANDO.* TO 'administrador'@'localhost';/*le damos todos los perminos porque es el administrador de la pagina web para que pueda hacer todos los cambios y actualizaciones correspondientes*/
CREATE USER IF NOT EXISTS 'anonimo'@'localhost' IDENTIFIED BY 'anonimo123';/*creamos el usuario sino exixte*/
GRANT SELECT ON VOYVOLANDO.AEROPUERTO  TO 'anonimo'@'localhost';/*damos el permiso de ver el aeropuerto correspondiente */
GRANT SELECT ON VOYVOLANDO.TERMINAL  TO 'anonimo'@'localhost';/*damos el permiso de ver la trerminal correspondiente */
GRANT SELECT ON VOYVOLANDO.VUELO  TO 'anonimo'@'localhost';/*damos el permiso de ver el vuelo  correspondiente que esta buscando */
GRANT SELECT ON VOYVOLANDO.COMPAÑIA  TO 'anonimo'@'localhost';/*damos el permiso de ver las compañias aereas que ofrecen el vuelo correspondiente */
GRANT SELECT ON VOYVOLANDO.HORARIO  TO 'anonimo'@'localhost';/*damos el permiso de ver el horario el cual el vuelo va a salir*/
CREATE USER IF NOT EXISTS 'cliente'@'localhost' IDENTIFIED BY 'cliente123';/*creamos el usuario sino exixte*/
GRANT INSERT ON VOYVOLANDO.PASAJERO  TO 'cliente'@'localhost';/*damos el permiso de insertar datos en la tabla pasajero ya que son datos del cliente que tiene que introducir el*/
GRANT INSERT,SELECT ON VOYVOLANDO.RESERVA  TO 'cliente'@'localhost';/*damos los permisos de insertar y ver la tabla reserva ya que el ha metido los datos y los tiene que ver los datos que ha introducido*/
GRANT SELECT ON VOYVOLANDO.AEROPUERTO  TO 'cliente'@'localhost'; /*damos al cliente  el permiso de ver el aeropuerto correspondiente */
GRANT SELECT ON VOYVOLANDO.TERMINAL  TO 'cliente'@'localhost';/*damos al cliente  el permiso de ver la terminal  correspondiente  en donde tiene que estar*/
GRANT SELECT ON VOYVOLANDO.VUELO  TO 'cliente'@'localhost';/*damos al cliente  el permiso de ver el vuelo correspondiente que quiere reservar o observar */
GRANT SELECT ON VOYVOLANDO.COMPAÑIA  TO 'cliente'@'localhost';/*damos al cliente  el permiso de ver la compañia  correspondiente que ofertan ese vuelo */
GRANT SELECT ON VOYVOLANDO.HORARIO  TO 'cliente'@'localhost';/*damos al cliente  el permiso de ver el hoario correspondiente del vuelo */
CREATE USER IF NOT EXISTS 'empleado'@'localhost' IDENTIFIED BY 'empleado123';/*creamos el usuario sino exixte*/
GRANT INSERT,UPDATE,SELECT,DELETE ON VOYVOLANDO.*  TO 'empleado'@'localhost';/*damos los permisos de insertar, actualizar, ver y borrar al empleado ya que es un empleado y tiene derecho a tener estos permisos*/

