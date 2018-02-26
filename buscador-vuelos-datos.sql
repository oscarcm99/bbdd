INSERT INTO AEROPUERTO VALUES('MAD','Barajas-Adolfo Suarez','Madrid','España'),('LHR','Heathrow','Londres','Inglaterra'),('CDG','Paris-Charles de Gaulle','Paris','Francia'),('MEX','Benito Juarez','Ciudad de Mexico','Mexico'),('BCN','El Prat','El Prat de Llobregat','España'),('LIS','Humberto Delgado','Lisboa','Portugal'),('EIN','Eindhoven','Eindhoven','Paises Bajos'),('ICN','Incheon','Incheon','Corea del Sur'),('PEK','Pekin-Capital','Pekin','China');
INSERT INTO TERMINAL VALUES('T4','MAD','Madrid'),('North','LHR','Londres'),('2C','CDG','Paris'),('T3','MEX','Ciudad de Mexico'),('T2B','BCN','El Prat de Llobregat');
INSERT INTO COMPAÑIA VALUES('RYR','Ryanair','img/ryanair.png'),('AEA','Air Europa','img/aireuropa.png'),('IBE','Iberia','img/iberia.png'),('VYG','Vueling','img/vueling.png'),('UAE','Fly Emirates','img/fly.png');
INSERT INTO VUELO VALUES('IB-2367','IBE','Barajas-Adolfo Suarez','Heathrow','Situado','4','1'),('FR-2377','RYR','Paris-Charles de Gualle','Heathrow','Cancelado','3','2'),('UX-2567','AEA','Barajas-Adolfo Suarez','Benito Juarez','Retrasado','5','8'),('EK-2467','UAE','El Prat','Heathrow','Retrasado','1','4'),('VY-3567','VYG','El Prat','Barajas-Adolfo Suarez','Cancelado','3','5');
INSERT INTO ASIENTO VALUES('13D','IB-2367','Turista'),('2A','FR-2377','Turista'),('1B','UX-2567','Business'),('23E','EK-2467','Business'),('6C','VY-3567','Turista');
INSERT INTO PASAJERO VALUES('07489563Z','Alfredo','Gomez','De la Serna','Adulto'),('50489410V','Adrian','Lopez','Rodriguez','Niño'),('45689721S','Jonathan','Muñoz','Garcia','Bebe'),('15648972F','Beatriz','Fernandez','Alcañiz','Adulto'),('36584225P','Dimitri','Rascalov','Ilianov','Niño');
INSERT INTO RESERVA VALUES('DG3421','07489563Z',234.45,'Tarjeta','Ida y vuelta'),('FS4567','50489410V', 123.09,'Efectivo','Ida'),('AB0021','45689721S',89.01,'Efectivo','Ida y vuelta'),('RT1234','15648972F',678.21 ,'Tarjeta','Ida'),('PK5004','36584225P', 304.45,'Efectivo','Ida y vuelta');
INSERT INTO RESERVA_VUELO VALUES('DG3421','IB-2367','13D'),('FS4567','FR-2377','2A'),('AB0021','UX-2567','1B'),('RT1234','EK-2467','23E'),('PK5004','VY-3567','6C');
INSERT INTO HORARIO VALUES('IB-2367','2018-02-28 10:30:00','2018-02-28 13:30:00'),('FR-2377','2018-02-28 17:30:00','2018-02-28 19:00:00'),('UX-2567','2018-02-28 13:50:00','2018-02-28 17:20:00'),('EK-2467','2018-02-28 12:10:00','2018-02-28 13:50:00'),('VY-3567','2018-02-28 20:40:00','2018-02-28 20:40:00');
INSERT INTO FACTURACION VALUES(15,'T4','MAD','Madrid','08:30:00','2018-02-28','IB-2367'),(34,'2C','CDG','Paris','17:00:00','2018-02-28','FR-2377'),(23,'T4','MAD','Madrid','11:50:00','2018-02-28','UX-2567'),(11,'T2B','BCN','El Prat de Llobregat','10:10:00','2018-02-28','EK-2467'),(45,'T2B','BCN','El Prat de Llobregat','18:40:00','2018-02-28','VY-3567');
UPDATE AEROPUERTO SET CodIATA = 'ORY' WHERE CodIATA = 'CDG';
UPDATE AEROPUERTO SET Nombre = 'Orly' WHERE Nombre = 'Paris-Charles de Gaulle';
UPDATE AEROPUERTO SET Ciudad = 'Orly' WHERE Ciudad = 'Paris';
DELETE FROM AEROPUERTO WHERE Pais ='Portugal';
DELETE FROM AEROPUERTO WHERE Pais ='Paises Bajos';
DELETE FROM AEROPUERTO WHERE Pais ='China';
