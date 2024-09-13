create database Academia;

use Academia;

Create table Programa(
	id_programa int NOT NULL,
	no_programa char(40) NOT NULL,
	Constraint PK_programa PRIMARY KEY (id_programa)
);

Create table Alumno(
	id_alumno int NOT NULL,
	no_alumno char(40) NOT NULL,
	id_programa int,
	Constraint PK_alumno PRIMARY KEY(id_alumno),
	Constraint FK_alumno FOREIGN KEY (id_programa) REFERENCES Programa(id_programa)
);

Create table Profesor(
	id_profesor int NOT NULL,
	no_profesor char(40) NOT NULL,
	Constraint PK_profesor PRIMARY KEY(id_profesor)
);

Create table Asignatura(
	id_asignatura int NOT NULL,
	no_asignatura char(40) NOT NULL,
	id_programa int NOT NULL
	Constraint PK_asignatura PRIMARY KEY (id_asignatura)
	Constraint FK_asignatura FOREIGN KEY (id_programa) REFERENCES Programa(id_programa)
);

Create table Notas(
	id_alumno int NOT NULL,
	id_asignatura int NOT NULL,
	id_profesor int NOT NULL,
	semestre int not null,
	nota decimal(2,1) not null,
	grupo int,
	Constraint PK_notas PRIMARY KEY  (id_alumno, id_asignatura,semestre,grupo),
	Constraint FK_notas1 FOREIGN KEY (id_alumno) REFERENCES alumno(id_alumno),
	Constraint FK_notas2 FOREIGN KEY (id_asignatura) REFERENCES asignatura(id_asignatura),
	Constraint FK_notas3 FOREIGN KEY (id_profesor) REFERENCES profesor(id_profesor)
	);


INSERT INTO programa (id_programa, no_programa) VALUES (401, 'Desarrollo de Software')
INSERT INTO programa (id_programa, no_programa) VALUES (402, 'Contaduria publica')
INSERT INTO programa (id_programa, no_programa) VALUES (403, 'Administracion de empresas')

INSERT INTO profesor (id_profesor, no_profesor) VALUES (11111, 'Diana Rico')
INSERT INTO profesor (id_profesor, no_profesor) VALUES (22222, 'Jairo Ortiz')
INSERT INTO profesor (id_profesor, no_profesor) VALUES (33333, ' Alicia Osorio')
INSERT INTO profesor (id_profesor, no_profesor) VALUES (44444, ' Maria E Moncada')

INSERT INTO asignatura (id_asignatura, no_asignatura, id_programa) 
VALUES (1000, 'Bases de Datos',401)
INSERT INTO asignatura (id_asignatura, no_asignatura, id_programa) 
VALUES (1001, 'Analisis de Requisitos',401)
INSERT INTO asignatura (id_asignatura, no_asignatura, id_programa) 
VALUES (1002, 'Logica de Programacion',401)
INSERT INTO asignatura (id_asignatura, no_asignatura, id_programa) 
VALUES (1003, 'Estructura de Datos',401)
INSERT INTO asignatura (id_asignatura, no_asignatura, id_programa) 
VALUES (1004, 'Contabilidad general',402)
INSERT INTO asignatura (id_asignatura, no_asignatura, id_programa) 
VALUES (1005, 'Contabilidad de Costos',402)
INSERT INTO asignatura (id_asignatura, no_asignatura, id_programa) 
VALUES (1006, 'Presupuesto de gastos',402)
INSERT INTO asignatura (id_asignatura, no_asignatura, id_programa) 
VALUES (1007, 'Leyes tributarisas',402)
INSERT INTO asignatura (id_asignatura, no_asignatura, id_programa) 
VALUES (1008, 'Administracion General',403)
INSERT INTO asignatura (id_asignatura, no_asignatura, id_programa) 
VALUES (1009, 'Evaluacion de proyectos',403)
INSERT INTO asignatura (id_asignatura, no_asignatura, id_programa) 
VALUES (1010, 'Administracion de Personal',403)
INSERT INTO asignatura (id_asignatura, no_asignatura, id_programa) 
VALUES (1011, 'Bolsa de Valores',403)



 
INSERT INTO Alumno (id_alumno, no_alumno, id_programa) 
VALUES (22258005, 'AGUIRRE MEJIA SANTIAGO',401)
INSERT INTO Alumno (id_alumno, no_alumno, id_programa) 
VALUES (21158020, 'ALZATE BOHORQUEZ JULIANA',401)
INSERT INTO Alumno (id_alumno, no_alumno, id_programa) 
VALUES (21158021, 'ALZATE QUINTERO ESTEBAN',401)
INSERT INTO Alumno (id_alumno, no_alumno, id_programa) 
VALUES (20258013, 'ANGEL VELEZ JUAN PABLO',401)
INSERT INTO Alumno (id_alumno, no_alumno, id_programa) 
VALUES (22158025, 'ARANGO MONTOYA SAMUEL',401)
INSERT INTO Alumno (id_alumno, no_alumno, id_programa) 
VALUES (22158339, 'ARCILA HERRERA JOSE LUIS',401)
INSERT INTO Alumno (id_alumno, no_alumno, id_programa) 
VALUES (23258543, 'BENITEZ VILLADA JUAN GUILLERMO',401)
INSERT INTO Alumno (id_alumno, no_alumno, id_programa) 
VALUES (23258606, 'CANO VALOIS JOSE FEDERICO',401)
INSERT INTO Alumno (id_alumno, no_alumno, id_programa) 
VALUES (22158390, 'CARDONA AGUDELO CRISTIAN FERNANDO',401)
INSERT INTO Alumno (id_alumno, no_alumno, id_programa) 
VALUES (22258548, 'CARDONA MENESES LUIS MIGUEL',401)
INSERT INTO Alumno (id_alumno, no_alumno, id_programa) 
VALUES (21158527, 'CARVAJAL ASPRILLA LUIS DAVID',401)
INSERT INTO Alumno (id_alumno, no_alumno, id_programa) 
VALUES (22158053, 'CASTAÑO TORRES SANTIAGO',401)
INSERT INTO Alumno (id_alumno, no_alumno, id_programa) 
VALUES (22258104, 'CASTRO LOPEZ DAVID FERNANDO',402)
INSERT INTO Alumno (id_alumno, no_alumno, id_programa) 
VALUES (21158085, 'CETRE MOSQUERA XIOMARA',402)
INSERT INTO Alumno (id_alumno, no_alumno, id_programa) 
VALUES (22158065, 'COLORADO VARELA ANA MARÍA',402)
INSERT INTO Alumno (id_alumno, no_alumno, id_programa) 
VALUES (21258370, 'DELGADO MARQUEZ NELSON DAVID',402)
INSERT INTO Alumno (id_alumno, no_alumno, id_programa) 
VALUES (21158123, 'FRANCO CANO VIVIANA ESTEFANIA',402)
INSERT INTO Alumno (id_alumno, no_alumno, id_programa) 
VALUES (23158272, 'HOLGUIN FRANCO SAMUEL',402)
INSERT INTO Alumno (id_alumno, no_alumno, id_programa) 
VALUES (23158777, 'LOPEZ SANCHEZ SEBASTIAN',402)
INSERT INTO Alumno (id_alumno, no_alumno, id_programa) 
VALUES (23158701, 'MADRID CALDERON ALEJANDRA',402)
INSERT INTO Alumno (id_alumno, no_alumno, id_programa) 
VALUES (23158762, 'MONTOYA CORRALES MARYORI YURLEI',402)
INSERT INTO Alumno (id_alumno, no_alumno, id_programa) 
VALUES (23258640, 'MONTOYA VELASQUEZ ROBIN ALEXANDER',402)
INSERT INTO Alumno (id_alumno, no_alumno, id_programa) 
VALUES (22258325, 'MORALES RAMIREZ DAVID ALEJANDRO',402)
INSERT INTO Alumno (id_alumno, no_alumno, id_programa) 
VALUES (21158221, 'MORALES VARGAS DAVID',402)
INSERT INTO Alumno (id_alumno, no_alumno, id_programa) 
VALUES (19258133, 'MURILLO BETANCUR SAMIR STEVEN',402)
INSERT INTO Alumno (id_alumno, no_alumno, id_programa) 
VALUES (19258433, 'MURILLO MENA DEYNER DAVID',402)
INSERT INTO Alumno (id_alumno, no_alumno, id_programa) 
VALUES (20158221, 'OSORIO CARDONA JUAN PABLO',402)
INSERT INTO Alumno (id_alumno, no_alumno, id_programa) 
VALUES (22258360, 'OSPINA MADRIGAL SEBASTIAN',402)
INSERT INTO Alumno (id_alumno, no_alumno, id_programa) 
VALUES (22258398, 'RAMIREZ RIOS ADRIAN FELIPE',402)
INSERT INTO Alumno (id_alumno, no_alumno, id_programa) 
VALUES (21258266, 'RAMIREZ ZAPATA SARA',402)



INSERT INTO Alumno (id_alumno, no_alumno, id_programa) 
VALUES (20158275, 'RIOS SALAZAR HAMILTON JULIAN',403)
INSERT INTO Alumno (id_alumno, no_alumno, id_programa) 
VALUES (22258526,'RODAS AGUDELO ESTEBAN',403)
INSERT INTO Alumno (id_alumno, no_alumno, id_programa) 
VALUES (21158296,'SANCHEZ AVILA HAROLD ANDREY',403)
INSERT INTO Alumno (id_alumno, no_alumno, id_programa) 
VALUES (22258427,'SANCHEZ BECERRA JUAN JOSE',403)
INSERT INTO Alumno (id_alumno, no_alumno, id_programa) 
VALUES (21258310,'SANTA BEDOYA SEBASTIAN',403)
INSERT INTO Alumno (id_alumno, no_alumno, id_programa) 
VALUES (22258664,'SUAREZ GALLEGO JULIAN ESTEBAN',403)		
INSERT INTO Alumno (id_alumno, no_alumno, id_programa) 
VALUES (20158309,'TANGARIFE GAVIRIA LUIS FELIPE',403)
INSERT INTO Alumno (id_alumno, no_alumno, id_programa) 
VALUES (22258506,'VILLA CASTILLO SEBASTIAN',403)

INSERT INTO NOTAS (id_alumno,id_asignatura,id_profesor,semestre,nota,grupo)
VALUES(22258005,1000,11111,20232,3.6,1)
INSERT INTO NOTAS (id_alumno,id_asignatura,id_profesor,semestre,nota,grupo)
VALUES(22258005,1001,22222,20232,4.0,1)
INSERT INTO NOTAS (id_alumno,id_asignatura,id_profesor,semestre,nota,grupo)
VALUES(22258005,1002,33333,20232,2.6,1)
INSERT INTO NOTAS (id_alumno,id_asignatura,id_profesor,semestre,nota,grupo)
VALUES(22258005,1003,44444,20232,3.0,1)
INSERT INTO NOTAS (id_alumno,id_asignatura,id_profesor,semestre,nota,grupo)
VALUES(21158020,1000,11111,20232,2.0,1)
INSERT INTO NOTAS (id_alumno,id_asignatura,id_profesor,semestre,nota,grupo)
VALUES(21158020,1001,22222,20232,4.0,1)
INSERT INTO NOTAS (id_alumno,id_asignatura,id_profesor,semestre,nota,grupo)
VALUES(21158020,1002,33333,20232,4.0,1)
INSERT INTO NOTAS (id_alumno,id_asignatura,id_profesor,semestre,nota,grupo)
VALUES(21158020,1003,44444,20232,3.8,1)
INSERT INTO NOTAS (id_alumno,id_asignatura,id_profesor,semestre,nota,grupo)
VALUES(22258360,1004,44444,20232,3.0,1)
INSERT INTO NOTAS (id_alumno,id_asignatura,id_profesor,semestre,nota,grupo)
VALUES(22258360,1005,33333,20232,3.0,1)
INSERT INTO NOTAS (id_alumno,id_asignatura,id_profesor,semestre,nota,grupo)
VALUES(22258360,1006,22222,20232,2.0,1)
INSERT INTO NOTAS (id_alumno,id_asignatura,id_profesor,semestre,nota,grupo)
VALUES(22258360,1007,11111,20232,3.5,1)
INSERT INTO NOTAS (id_alumno,id_asignatura,id_profesor,semestre,nota,grupo)
VALUES(22158065,1004,44444,20232,4.0,1)
INSERT INTO NOTAS (id_alumno,id_asignatura,id_profesor,semestre,nota,grupo)
VALUES(22158065,1005,33333,20232,4.0,1)
INSERT INTO NOTAS (id_alumno,id_asignatura,id_profesor,semestre,nota,grupo)
VALUES(22158065,1006,22222,20232,4.0,1)
INSERT INTO NOTAS (id_alumno,id_asignatura,id_profesor,semestre,nota,grupo)
VALUES(22158065,1007,11111,20232,3.5,1)
INSERT INTO NOTAS (id_alumno,id_asignatura,id_profesor,semestre,nota,grupo)
VALUES(23158701,1008,33333,20232,3.0,1)
INSERT INTO NOTAS (id_alumno,id_asignatura,id_profesor,semestre,nota,grupo)
VALUES(23158701,1009,44444,20232,3.0,1)
INSERT INTO NOTAS (id_alumno,id_asignatura,id_profesor,semestre,nota,grupo)
VALUES(23158701,1010,22222,20232,3.0,1)
INSERT INTO NOTAS (id_alumno,id_asignatura,id_profesor,semestre,nota,grupo)
VALUES(23158701,1011,11111,20232,1.0,1)
INSERT INTO NOTAS (id_alumno,id_asignatura,id_profesor,semestre,nota,grupo)
VALUES(21158085,1008,33333,20232,2.0,1)
INSERT INTO NOTAS (id_alumno,id_asignatura,id_profesor,semestre,nota,grupo)
VALUES(21158085,1009,44444,20232,4.0,1)
INSERT INTO NOTAS (id_alumno,id_asignatura,id_profesor,semestre,nota,grupo)
VALUES(21158085,1010,22222,20232,4.0,1)
INSERT INTO NOTAS (id_alumno,id_asignatura,id_profesor,semestre,nota,grupo)
VALUES(21158085,1011,11111,20232,3.5,1)
INSERT INTO NOTAS (id_alumno,id_asignatura,id_profesor,semestre,nota,grupo)
VALUES(21158123,1000,11111,20232,3.0,2)
INSERT INTO NOTAS (id_alumno,id_asignatura,id_profesor,semestre,nota,grupo)
VALUES(21158123,1001,22222,20232,3.0,2)
INSERT INTO NOTAS (id_alumno,id_asignatura,id_profesor,semestre,nota,grupo)
VALUES(23158762,1000,11111,20232,3.5,2)
INSERT INTO NOTAS (id_alumno,id_asignatura,id_profesor,semestre,nota,grupo)
VALUES(23158762,1001,22222,20232,2.5,2)

Select * From dbo.Alumno;
Select * From dbo.Notas;
