INSERT INTO AEROPUERTO VALUES
		('MAD','Barajas-Adolfo	Suarez','Madrid','España'),								
		('LHR','Heathrow','Londres','Inglaterra'),
		('CDG','Paris-Charles de Gaulle','Paris','Francia'),
		('MEX','Benito Juarez','Ciudad de Mexico','Mexico'),
		('BCN','El Prat','El Prat de Llobregat','España'),
		('LIS','Humberto Delgado','Lisboa','Portugal'),
		('EIN','Eindhoven','Eindhoven','Paises Bajos'),
		('ICN','Incheon','Incheon','Corea del Sur'),
		('PEK','Pekin-Capital','Pekin','China');
INSERT INTO TERMINAL VALUES
		('T4','MAD','Madrid'),
		('North','LHR','Londres'),
		('2C','CDG','Paris'),
		('T3','MEX','Ciudad de Mexico'),
		('T2B','BCN','El Prat de Llobregat'),
		('T8','LIS','Lisboa'),
		('T1','EIN','Eindhoven'),
		('T7','ICN','Incheon'),
		('T5','PEK','Pekin');
INSERT INTO COMPAÑIA VALUES
		('RYR','Ryanair','img/ryanair.png'),
		('AEA','Air Europa','img/aireuropa.png'),
		('IBE','Iberia','img/iberia.png'),
		('VYG','Vueling','img/vueling.png'),
		('UAE','Fly Emirates','img/fly.png'),
		('QTR','Qatar Airways','img/qatar.png'),
		('NAX','Norwegian Air','img/nor.png'),
		('ABX','ABEX','img/ABEX.png'),
		('HTH','Alboran','img/alboran.png');
INSERT INTO VUELO VALUES
		('IB-2367','IBE','Barajas-Adolfo Suarez','Heathrow','Situado','4','1'),
		('FR-2377','RYR','Paris-Charles de Gualle','Heathrow','Cancelado','3','2'),      	
		('UX-2567','AEA','Barajas-Adolfo Suarez','Benito Juarez','Retrasado','5','8'),
		('EK-2467','UAE','El Prat','Heathrow','Retrasado','1','4'),
		('VY-3567','VYG','El Prat','Barajas-Adolfo Suarez','Cancelado','3','5'),
		('QT-6730','QTR','El Prat','Benito Juarez','Situado','3','12'),
		('NA-9787','NAX','El Prat','Humberto Delgado','Cancelado','10','2'),
		('AB-1390','ABX','Pekin-Capital','Barajas-Adolfo Suarez','Retrasado','3','7'),
		('HT-3200','HTH','Benito Juarez','Incheon','Cancelado','1','2');
INSERT INTO ASIENTO VALUES
		('13D','IB-2367','Turista'),
		('2A','FR-2377','Turista'),
		('1B','UX-2567','Business'),
		('23E','EK-2467','Business'),
		('6C','VY-3567','Turista'),
		('19A','QT-6730','Turista'),		
		('35F','NA-9787','Turista'),
		('2B','AB-1390','Business'),
		('16F','HT-3200','Turista');
INSERT INTO PASAJERO VALUES
		('07489563Z','Alfredo','Gomez','De la Serna','Adulto'),	
		('50489410V','Adrian','Lopez','Rodriguez','Niño'),	
		('45689721S','Jonathan','Muñoz','Garcia','Bebe'),	
		('15648972F','Beatriz','Fernandez','Alcañiz','Adulto'),	
		('36584225P','Dimitri','Rascalov','Ilianov','Niño'),
		('20320125Z','Olga','Zan','Gomez','Adulto'),
		('08958745Q','Diego','Hernandez','Calderon','Niño'),	
		('04256482L','David','Prado','Lancharro','Bebe'),	
		('34567801V','Juan','Lopez','Alcahuete','Adulto');		
INSERT INTO RESERVA VALUES
		('DG3421','07489563Z',234.45,'Tarjeta','Ida y vuelta'),
		('FS4567','50489410V', 123.09,'Efectivo','Ida'),
		('AB0021','45689721S',89.01,'Efectivo','Ida y vuelta'),	
		('RT1234','15648972F',678.21 ,'Tarjeta','Ida'),
		('PK5004','36584225P', 304.45,'Efectivo','Ida y vuelta'),
		('GC0012','20320125Z',201.45,'Tarjeta','Ida'),
		('XZ0098','08958745Q',105.89,'Efectivo','Ida'),
		('AA3789','04256482L',56.03,'Efectivo','Ida y vuelta'),
		('WC2121','34567801V',589.90,'Tarjeta','Ida y vuelta');
INSERT INTO RESERVA_VUELO VALUES
		('DG3421','IB-2367','13D'),
		('FS4567','FR-2377','2A'),
		('AB0021','UX-2567','1B'),
		('RT1234','EK-2467','23E'),
		('PK5004','VY-3567','6C'),
		('GC0012','QT-6730','19A'),
		('XZ0098','NA-9787','35F'),
		('AA3789','AB-1390','2B'),
		('WC2121','HT-3200','16F');
INSERT INTO HORARIO VALUES
		('IB-2367','2018-02-28 10:30:00','2018-02-28 13:30:00'),
		('FR-2377','2018-02-28 17:30:00','2018-02-28 19:00:00'),
		('UX-2567','2018-02-28 13:50:00','2018-02-28 17:20:00'),
		('EK-2467','2018-02-28 12:10:00','2018-02-28 13:50:00'),
		('VY-3567','2018-02-28 07:00:00','2018-02-28 08:00:00'),
		('QT-6730','2018-02-28 22:00:00','2018-03-01 23:30:00'),
		('NA-9787','2018-02-28 20:40:00','2018-02-28 02:15:00'),
		('AB-1390','2018-02-28 19:25:00','2018-02-28 22:50:00'),
		('HT-3200','2018-02-28 20:00:00','2018-03-01 01:40:00');
INSERT INTO FACTURACION VALUES
		(15,'T4','MAD','Madrid','08:30:00','2018-02-28','IB-2367'),	
		(34,'2C','CDG','Paris','15:30:00','2018-02-28','FR-2377'),	
		(23,'T4','MAD','Madrid','11:50:00','2018-02-28','UX-2567'),
		(11,'T2B','BCN','El Prat de Llobregat','10:10:00','2018-02-28','EK-2467'),	
		(45,'T2B','BCN','El Prat de Llobregat','18:40:00','2018-02-28','VY-3567'),
		(10,'T2B','BCN','El Prat de Llobregat','20:00:00','2018-02-28','QT-6730'),
		(22,'T2B','BCN','El Prat de Llobregat','18:40:00','2018-02-28','NA-9787'),
		(67,'T5','PEK','Pekin','17:25:00','2018-02-28','AB-1390'),
		(40,'T3','MEX','Ciudad de Mexico','18:00:00','2018-02-28','HT-3200');
		
UPDATE AEROPUERTO SET CodIATA = 'ORY' WHERE CodIATA = 'CDG';
UPDATE AEROPUERTO SET Nombre = 'Orly' WHERE Nombre = 'Paris-Charles de Gaulle';
UPDATE AEROPUERTO SET Ciudad = 'Orly' WHERE Ciudad = 'Paris';
DELETE FROM AEROPUERTO WHERE Pais ='Portugal';
DELETE FROM AEROPUERTO WHERE Pais ='Paises Bajos';
DELETE FROM AEROPUERTO WHERE Pais ='China';
UPDATE TERMINAL SET Numero = 'T3' WHERE Numero = 'T4';
UPDATE TERMINAL SET Numero = 'South' WHERE Numero = 'North';
UPDATE TERMINAL SET Numero = 'T1B' WHERE Numero = 'T2B';
DELETE FROM TERMINAL WHERE Ciudad_Aeropuerto ='Lisboa';
DELETE FROM TERMINAL WHERE Ciudad_Aeropuerto ='Eindhoven';
DELETE FROM TERMINAL WHERE Ciudad_Aeropuerto ='Pekin';
UPDATE COMPAÑIA SET CodCompañia = 'AAL' WHERE CodCompañia = 'RYR';
UPDATE COMPAÑIA SET Nombre = 'American Airlines' WHERE Nombre = 'Ryanair';
UPDATE COMPAÑIA SET Logo = 'img/aal.png' WHERE Logo = 'img/ryanair.png';
DELETE FROM COMPAÑIA WHERE CodCompañia = 'NAX';
DELETE FROM COMPAÑIA WHERE CodCompañia = 'ABX';
DELETE FROM COMPAÑIA WHERE CodCompañia = 'HTH';
UPDATE VUELO SET CodVuelo = 'IB-1023' WHERE CodVuelo = 'IB-2367';
UPDATE VUELO SET CodVuelo = 'FR-2311' WHERE CodVuelo = 'FR-2377';
UPDATE VUELO SET CodVuelo = 'UX-2009' WHERE CodVuelo = 'UX-2567';
DELETE FROM VUELO WHERE CodCompañia = 'NAX';
DELETE FROM VUELO WHERE CodCompañia = 'ABX';
DELETE FROM VUELO WHERE CodCompañia = 'HTH';
UPDATE ASIENTO SET CodAsiento = '20A' WHERE CodAsiento = '13D';
UPDATE ASIENTO SET CodAsiento = '2D' WHERE CodAsiento = '2A';
UPDATE ASIENTO SET CodAsiento = '1C' WHERE CodAsiento = '1B';
DELETE FROM ASIENTO WHERE CodVuelo_VUELO = 'NA-9787';
DELETE FROM ASIENTO WHERE CodVuelo_VUELO = 'AB-1390';
DELETE FROM ASIENTO WHERE CodVuelo_VUELO = 'HT-3200';
UPDATE PASAJERO SET DNI = '58942512C' WHERE DNI = '50489410V';
UPDATE PASAJERO SET DNI = '01254885R' WHERE DNI = '15648972F';
UPDATE PASAJERO SET Nombre = 'Jose Carlos' WHERE Nombre = 'Jonathan';
DELETE FROM PASAJERO WHERE DNI = '08958745Q';
DELETE FROM PASAJERO WHERE DNI = '04256482L';
DELETE FROM PASAJERO WHERE DNI = '34567801V';
UPDATE RESERVA SET Precio = 269.80 WHERE Precio = 234.45;
UPDATE RESERVA SET Precio = 120.59 WHERE Precio = 123.09;
UPDATE RESERVA SET Precio = 80.00 WHERE Precio = 89.01;
DELETE FROM RESERVA WHERE Localizador = 'XZ0098';
DELETE FROM RESERVA WHERE Localizador = 'AA3789';
DELETE FROM RESERVA WHERE Localizador = 'WC2121';
UPDATE HORARIO SET HoraFechaSalida = '2018-03-01 10:30:00' WHERE HoraFechaSalida = '2018-02-28 10:30:00';
UPDATE HORARIO SET HoraFechaLlegada = '2018-03-01 13:30:00' WHERE HoraFechaLlegada = '2018-02-28 13:30:00';
UPDATE HORARIO SET HoraFechaSalida = '2018-02-28 17:00:00' WHERE HoraFechaSalida = '2018-02-28 17:30:00';
DELETE FROM HORARIO WHERE CodVuelo_VUELO = 'NA-9787';
DELETE FROM HORARIO WHERE CodVuelo_VUELO = 'AB-1390';
DELETE FROM HORARIO WHERE CodVuelo_VUELO = 'HT-3200';
UPDATE FACTURACION SET Fecha = '2018-03-01' WHERE Fecha = '2018-02-28';
UPDATE FACTURACION SET HoraLimite = '15:00:00' WHERE HoraLimite = '15:30:00';
UPDATE FACTURACION SET Mostrador = 32 WHERE Mostrador = 23;
DELETE FROM FACTURACION WHERE Mostrador = 22;
DELETE FROM FACTURACION WHERE Mostrador = 67;
DELETE FROM FACTURACION WHERE Mostrador = 40;
