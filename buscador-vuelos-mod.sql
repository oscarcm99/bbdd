/*En las FK añadimos CONSTRAINT para que sea mas facil identificar la FK y saber de donde viene y cuantas hay*/
/*En las references de las foreign key hemos puesto que cuando se borre en el campo padre se borre en todas (CASCADE) y que cuando se actualize en el campo padre se actualize en todas(CASCADE)*/
ALTER TABLE AEROPUERTO ADD PRIMARY KEY (CodIATA, Ciudad);/*Es primary key porque una ciudad no puede tener dos mismos código IATA*/
ALTER TABLE AEROPUERTO ADD UNIQUE(Nombre);/*No puede haber dos aeropuertos con el mismo nombre*/
ALTER TABLE AEROPUERTO DROP INDEX Nombre;/*Aqui se borra la propiedad unique en el Nombre*/
ALTER TABLE AEROPUERTO ADD UNIQUE(Nombre);/*Aqui se vuelve a añadir la propiedad unique a Nombre*/
ALTER TABLE TERMINAL ADD PRIMARY KEY(Numero,CodIATA_Aeropuerto,Ciudad_Aeropuerto);/*Añadimos estos campos como multiclave ya que no puede haber*/
ALTER TABLE TERMINAL ADD CONSTRAINT FK_AEROPUERTO FOREIGN KEY(CodIATA_Aeropuerto,Ciudad_Aeropuerto) REFERENCES AEROPUERTO(CodIATA,Ciudad) ON DELETE CASCADE ON UPDATE CASCADE;/*Traemos los campos que son mutliclave de AEROPUERTO*/
ALTER TABLE VUELO ADD PRIMARY KEY(CodVuelo);/*El codigo del vuelo tiene que identificarse como unico*/
ALTER TABLE COMPAÑIA ADD PRIMARY KEY(CodCompañia);/*El codigo de la compañia debe de identificarse como único*/
ALTER TABLE COMPAÑIA DROP Logo;/*Borramos el campo logo*/
ALTER TABLE COMPAÑIA ADD Logo VARCHAR(30);/*Añadimos el campo logo*/
ALTER TABLE COMPAÑIA MODIFY Logo VARCHAR(40);/*Modificamos el campo logo amppliando el rango de caracteres*/
ALTER TABLE VUELO ADD CONSTRAINT FK_COMPANIA FOREIGN KEY(CodCompañia) REFERENCES COMPAÑIA(CodCompañia) ON DELETE CASCADE ON UPDATE CASCADE;/*Añadimos la clave principal de Compañia*/
ALTER TABLE ASIENTO ADD PRIMARY KEY(CodAsiento,CodVuelo_VUELO);/*Las hacemos multiclave porque no puede haber dos mismos asientos en un código de vuelo*/
ALTER TABLE ASIENTO ADD CONSTRAINT FK_VUELOS FOREIGN KEY(CodVuelo_VUELO) REFERENCES VUELO(CodVuelo) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE PASAJERO ADD PRIMARY KEY(DNI);/*El DNI es único, no hay dos iguales*/
ALTER TABLE RESERVA ADD PRIMARY KEY(Localizador);/*El localizador del billete debe de ser único*/
ALTER TABLE RESERVA ADD CONSTRAINT FK_PASAJERO FOREIGN KEY(DNI_PASAJERO) REFERENCES PASAJERO(DNI) ON DELETE CASCADE ON UPDATE CASCADE;/*Añadimos la clave principal de Pasajero*/
ALTER TABLE RESERVA_VUELO ADD PRIMARY KEY(Localizador_RESERVA,CodVuelo_VUELO,CodAsiento_ASIENTO);/*Son multiclave porque en un mismo vuelo no puede haber en un codigo de vuelo, mismos localizadores y asientos y debe de ser unico entre ellos*/
ALTER TABLE RESERVA_VUELO ADD CONSTRAINT FK_RESERVA FOREIGN KEY(Localizador_RESERVA) REFERENCES RESERVA(Localizador) ON DELETE CASCADE ON UPDATE CASCADE;/*Añadimos la clave principal de Reserva*/
ALTER TABLE RESERVA_VUELO ADD CONSTRAINT FK_VUELO FOREIGN KEY(CodVuelo_VUELO) REFERENCES VUELO(CodVuelo) ON DELETE CASCADE ON UPDATE CASCADE;/*Añadimos la clave principal de Vuelo*/
ALTER TABLE RESERVA_VUELO ADD CONSTRAINT FK_ASIENTO FOREIGN KEY(CodAsiento_ASIENTO) REFERENCES ASIENTO(CodAsiento) ON DELETE CASCADE ON UPDATE CASCADE;/*Añadimos la clave principal de Asiento*/
ALTER TABLE HORARIO ADD PRIMARY KEY(CodVuelo_VUELO,HoraFechaSalida,HoraFechaLlegada);/*Las hacemos multiclave porque en un codigo de vuelo no puede haber en la hora de salida y llegada la misma hora porque es impsoible que un vuelo salga a una hora y llegue esa misma hora*/
ALTER TABLE HORARIO ADD CONSTRAINT FK_VUELO1 FOREIGN KEY(CodVuelo_VUELO) REFERENCES VUELO(CodVuelo) ON DELETE CASCADE ON UPDATE CASCADE;/*Añadimos la clave principal del vuelo*/
ALTER TABLE FACTURACION ADD CodVuelo_VUELO CHAR(7);/*Añadimos un campo nuevo en facturacion porque es necesario saber cual es el codigo de vuelo para que el cliente sepa donde tenga que facturar y debe de ser 7 caracteres requeridos, caracteristica propia de los vuelos*/
ALTER TABLE FACTURACION ADD CONSTRAINT FK_VUELO3 FOREIGN KEY(CodVuelo_VUELO) REFERENCES VUELO(CodVuelo) ON DELETE CASCADE ON UPDATE CASCADE;/*Añadimos la clave principal de vuelo*/
ALTER TABLE FACTURACION ADD CONSTRAINT FK_TERMINAL FOREIGN KEY(Numero_TERMINAL) REFERENCES TERMINAL(Numero) ON DELETE CASCADE ON UPDATE CASCADE;/*Añadimos la clave principal de la Terminal*/
ALTER TABLE FACTURACION ADD CONSTRAINT FK_AEROPUERTO1 FOREIGN KEY(CodIATA_AEROPUERTO,Ciudad_AEROPUERTO) REFERENCES AEROPUERTO(CodIATA,Ciudad) ON DELETE CASCADE ON UPDATE CASCADE;/*Añadimos la clave principal del aeropuerto*/
