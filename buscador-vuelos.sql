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
			CodVuelo VARCHAR(7), 
			CodCompañia CHAR(3), 
			AeropuertoOrigen VARCHAR(50), 
			AeropuertoDestino VARCHAR(50), 
			Estado ENUM('Situado','Cancelado','Retrasado'), 
			PuertaEmbarque INT, 
			PuertaLlegada INT
		);

CREATE TABLE ASIENTO(
			CodAsiento VARCHAR(3), 
			TipoClase ENUM('Business','Turista')
			);

CREATE TABLE PASAJERO(
			DNI CHAR(9), 
			Nombre VARCHAR(30), 
			Apellido1 VARCHAR(30), 
			Apellido2 VARCHAR(30),
			EdadPasajero ENUM('Adulto','Niño','Bebe')	
			);

CREATE TABLE RESERVA(
			Localizador CHAR(9),
			DNI_PASAJERO CHAR(9),
			Precio FLOAT,
			metodoPago ENUM('Tarjeta','Efectivo') 
			);

CREATE TABLE RESERVA_VUELO(
			Localizador_RESERVA CHAR(9), 
			CodVuelo_VUELO VARCHAR(7),
			CodAsiento_ASIENTO VARCHAR(3)
			);

CREATE TABLE COMPAÑIA(
			CodCompañia CHAR(3), 
			Nombre VARCHAR(30), 
			Logo BLOB
			);

CREATE TABLE HORARIO(
			CodVuelo_VUELO VARCHAR(7), 
			HoraFechaSalida TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP, 				
			HoraFechaLlegada TIMESTAMP  DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
			);
CREATE TABLE FACTURACION(
			Mostrador INT, 
			Numero_Terminal VARCHAR(5), 
			Ciudad_AEROPUERTO VARCHAR(30), 
                        CodIATA_AEROPUERTO CHAR(3),
			HoraLimite TIME, 
			Fecha DATE
			);
source buscador-vuelos-mod.sql;
source buscador-vuelos-datos.sql;
