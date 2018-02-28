DROP DATABASE IF EXISTS VOYVOLANDO;
CREATE DATABASE VOYVOLANDO;
USE VOYVOLANDO
CREATE TABLE AEROPUERTO(
			CodIATA CHAR(3), /*Es CHAR(3) por que los código IATA son obligatoriamente 3 letras y con el char */
			Nombre VARCHAR(50) NOT NULL,/*el aeropuerto se debe de rellenar*/  
			Ciudad VARCHAR(30), 
			Pais VARCHAR(30)
			);

CREATE TABLE TERMINAL(
			Numero VARCHAR(5),  /*Hay terminales que no estan formadas solamente por un número*/
			CodIATA_Aeropuerto CHAR(3),/*las claves foraneas se ponen porque son primary key de aeropuerto*/ 
			Ciudad_Aeropuerto VARCHAR(30));

CREATE TABLE VUELO(
			CodVuelo CHAR(7),/*es char porque esta requerido que todos los codigos de vuelo son dos letras - 4numeros*/ 
			CodCompañia CHAR(3),/* son tres letras en mayuscula como IBE de Iberia*/ 
			AeropuertoOrigen VARCHAR(50), 
			AeropuertoDestino VARCHAR(50), 
			Estado ENUM('Situado','Cancelado','Retrasado') NOT NULL,/* necesitamos saber el estado del vuelo por eso es NOT NULL*/ 
			PuertaEmbarque INT, /*Ambas son de tipo entero porque se identifican con número*/ 
			PuertaLlegada INT
		);

CREATE TABLE ASIENTO(
			CodAsiento VARCHAR(3),/*Suele estar completo de una letra y uno o dos numeros por eso es VARCHAR porque en algunos casos puede ser de 2 caracteres y otras veces 3*/
			CodVuelo_VUELO CHAR(7), 
			TipoClase ENUM('Business','Turista')/*Clase del asiento */
			);

CREATE TABLE PASAJERO(
			DNI CHAR(9), /*El DNI tiene que ser obligatoriamente 9 caracteres*/
			Nombre VARCHAR(30), 
			Apellido1 VARCHAR(30), 
			Apellido2 VARCHAR(30),
			EdadPasajero ENUM('Adulto','Niño','Bebe') NOT NULL/*Se necesita saber*/	
			);

CREATE TABLE RESERVA(
			Localizador CHAR(6),/*Es char de 6 caracteres */
			DNI_PASAJERO CHAR(9),/*a una reserva se le asocia un DNI*/
			Precio FLOAT NOT NULL,/*Todo vuelo que está planeado tiene un precio y se necesita*/
			metodoPago ENUM('Tarjeta','Efectivo'),/*Dos metodos tarjeta o efectivo*/
			opcion ENUM('Ida','Ida y vuelta')/*Opciones de la reserva de vuelo*/
			);

CREATE TABLE RESERVA_VUELO(
			Localizador_RESERVA CHAR(6), /*Añadimos el localizdor del billete*/
			CodVuelo_VUELO CHAR(7),
			CodAsiento_ASIENTO VARCHAR(3)
			);

CREATE TABLE COMPAÑIA(
			CodCompañia CHAR(3), /*Las compañias en los aeropuertos*/
			Nombre VARCHAR(30), 
			Logo VARCHAR(30)/*ponemos varchar para especificar la ruta del fichero*/
			);

CREATE TABLE HORARIO(
			CodVuelo_VUELO CHAR(7), /*Añadimos el codigo del vuelo*/
			HoraFechaSalida TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP, /*Ponemos la fecha y hora de salida y llegada para que salga el dia y hora a la vez y si no se inserta un dato se mete la hora de este momento por defecto */				
			HoraFechaLlegada TIMESTAMP  DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
			);
CREATE TABLE FACTURACION(
			Mostrador INT, 
			Numero_Terminal VARCHAR(5), /*Queremos saber la terminal de que CodIATA y la Ciudad del aeropuerto*/
			CodIATA_AEROPUERTO CHAR(3),
			Ciudad_AEROPUERTO VARCHAR(30),
			HoraLimite TIME NOT NULL, /*La hora se debe saber  y son dos horas antes de la salida del vuelo*/
			Fecha DATE NOT NULL/*La fecha se debe de saber*/
			);
source buscador-vuelos-mod.sql;/*Cargamos las modificaciones*/
source buscador-vuelos-datos.sql;/*Cargamos la inserción, actualizado y borrado de datos*/
