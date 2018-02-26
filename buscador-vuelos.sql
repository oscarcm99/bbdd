DROP DATABASE IF EXISTS VOYVOLANDO;
CREATE DATABASE VOYVOLANDO;
USE VOYVOLANDO
CREATE TABLE AEROPUERTO(
			CodIATA CHAR(3), /*Es CHAR(3) por que los código IATA son obligatoriamente 3 letras y con el char */
			Nombre VARCHAR(50) NOT NULL, 
			Ciudad VARCHAR(30), 
			Pais VARCHAR(30)
			);

CREATE TABLE TERMINAL(
			Numero VARCHAR(5),  /*Hay terminales que no estan formadas solamente por un número*/
			CodIATA_Aeropuerto CHAR(3), 
			Ciudad_Aeropuerto VARCHAR(30));

CREATE TABLE VUELO(
			CodVuelo CHAR(7), 
			CodCompañia CHAR(3), 
			AeropuertoOrigen VARCHAR(50), 
			AeropuertoDestino VARCHAR(50), 
			Estado ENUM('Situado','Cancelado','Retrasado') NOT NULL, 
			PuertaEmbarque INT, 
			PuertaLlegada INT
		);

CREATE TABLE ASIENTO(
			CodAsiento VARCHAR(3),
			CodVuelo_VUELO CHAR(7), 
			TipoClase ENUM('Business','Turista')
			);

CREATE TABLE PASAJERO(
			DNI CHAR(9), 
			Nombre VARCHAR(30), 
			Apellido1 VARCHAR(30), 
			Apellido2 VARCHAR(30),
			EdadPasajero ENUM('Adulto','Niño','Bebe') NOT NULL	
			);

CREATE TABLE RESERVA(
			Localizador CHAR(6),
			DNI_PASAJERO CHAR(9),
			Precio FLOAT NOT NULL,
			metodoPago ENUM('Tarjeta','Efectivo'),
			opcion ENUM('Ida','Ida y vuelta')	 
			);

CREATE TABLE RESERVA_VUELO(
			Localizador_RESERVA CHAR(6), 
			CodVuelo_VUELO CHAR(7),
			CodAsiento_ASIENTO VARCHAR(3)
			);

CREATE TABLE COMPAÑIA(
			CodCompañia CHAR(3), 
			Nombre VARCHAR(30), 
			Logo VARCHAR(30)
			);

CREATE TABLE HORARIO(
			CodVuelo_VUELO CHAR(7), 
			HoraFechaSalida TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP, 				
			HoraFechaLlegada TIMESTAMP  DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
			);
CREATE TABLE FACTURACION(
			Mostrador INT, 
			Numero_Terminal VARCHAR(5), 
			CodIATA_AEROPUERTO CHAR(3),
			Ciudad_AEROPUERTO VARCHAR(30),
			HoraLimite TIME NOT NULL, 
			Fecha DATE NOT NULL
			);
source buscador-vuelos-mod.sql;
source buscador-vuelos-datos.sql;
