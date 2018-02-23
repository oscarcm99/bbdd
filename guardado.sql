ALTER TABLE AEROPUERTO ADD PRIMARY KEY (CodIATA, Ciudad);
ALTER TABLE AEROPUERTO ADD UNIQUE(Nombre);
ALTER TABLE TERMINAL ADD PRIMARY KEY(Numero,CodIATA,Ciudad);
ALTER TABLE TERMINAL ADD FOREIGN KEY(CodIATA,Ciudad) REFERENCES AEROPUERTO(CodIATA,Ciudad) ON DELETE SET NULL ON UPDATE CASCADE
ALTER TABLE VUELO ADD PRIMARY KEY(CodVuelo );
ALTER TABLE VUELO ADD FOREIGN KEY(CodCompañia) REFERENCES COMPAÑIA(CodCompañia) ON DELETE SET NULL ON UPDATE CASCADE);
ALTER TABLE ASIENTO ADD PRIMARY KEY(CodAsiento );
ALTER TABLE PASAJERO ADD PRIMARY KEY(DNI, Nombre);
ALTER TABLE RESERVA ADD PRIMARY KEY(Localizador, DNI);
ALTER TABLE RESERVA ADD FOREIGN KEY(DNI) REFERENCES PASAJERO(DNI) ON DELETE SET NULL ON UPDATE CASCADE);
ALTER TABLE RESERVA_VUELO ADD PRIMARY KEY(LOCALIZADOR, CodVuelo);
ALTER TABLE RESERVA_VUELO ADD FOREIGN KEY(DNI) REFERENCES PASAJERO(DNI) ON DELETE SET NULL ON UPDATE CASCADE);
ALTER TABLE COMPAÑIA ADD PRIMARY KEY(CodCompañia);
ALTER TABLE HORARIO ADD PRIMARY KEY(CodVuelo, HoraFechaSalida, HoraFechaLlegada);
ALTER TABLE HORARIO ADD FOREIGN KEY(CodVuelo) REFERENCES VUELO(CodVuelo) ON DELETE SET NULL ON UPDATE CASCADE);
ALTER TABLE FACTURACION ADD PRIMARY KEY(NumeroTerminal, CiudadAeropuerto, CodIATA);
ALTER TABLE FACTURACION ADD FOREIGN KEY(NumeroTerminal) REFERENCES TERMINAL(NumeroTerminal) ON DELETE SET NULL ON UPDATE CASCADE);
ALTER TABLE FACTURACION ADD FOREIGN KEY(CiudadAeropuerto, CodIATA) REFERENCES AEROPUERTO(CiudadAeropuerto) ON DELETE SET NULL ON UPDATE CASCADE);
