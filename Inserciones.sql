INSERT INTO cliente(id,cedula,nombres, apellidos, telefono, direccion,fecha_nacimiento,genero) 
VALUES (1,02123456, 'Anahi', 'Macias', 0991919, 'Calle13','2021-01-10','Femenino'),
       (2,20123457, 'Erika', 'gomez', 0918830, 'San juan calle2','2021-01-10','Femenino'),
	   (3,21023459, 'juan', 'lopez', 011128, 'Flavio reyes','2021-01-10','Masculino'),
	   (4,21203458, 'Leo', 'macias', 0999933, 'Tarqui','2021-01-10','Masculino')
	   

INSERT INTO tecnicos(id_tecnicos,cedula_te,nombres, apellidos,direccion,email) 
VALUES (1,021234467, 'Robert', 'Macias','Calle13','robert@gmail.com'),
       (2,201238734, 'Luis', 'gomez','San juan calle2','gomez@gmail.com'),
	   (3,210239293, 'Alberto', 'lopez','Flavio reyes','alberto@gmail.com'),
	   (4,212034431, 'Francisco', 'macias','Tarqui','macias@gmail.com')


INSERT INTO proveedor(id_proveedor,ruc,Nombre_proveedor,direccion,email) 
VALUES (1,521234467, 'Pc-home','Calle13-Manta','pchome@gmail.com'),
       (2,261238734, 'Ecomotos', ' calle2-Quito','ecomotos@gmail.com'),
	   (3,201239293, 'Gym-Express','Flavio reyes-manta','Gym@gmail.com'),
	   (4,272034431, 'Corisa-SA','Tarqui','corisa@gmail.com'),
	   (5,272034431, 'Amazon', 'CALLE 26 92 32 ED E1-Quito','amazon@gmail.com')
	   
	   
insert into tipo_servicio values
(1, 'mantenimiento de equipo electrodomestico',50.00),
(2, 'mantenimiento de equipo informatico',40.00),
(3, 'mantenimiento de equipo de gimnasio',62.00),
(4, 'mantenimiento de equipo ebanista',36.00),
(5, 'mantenimiento de equipo utomovil',43.00),
(6, 'mantenimiento de equipo agricultura',70.00)


   insert into especialidades values
(1, 'Especialidad en Electronica'),
(2, 'Especialidad en informatico'),
(3, 'Especialidad en Automotris'),
(4, 'Especialidad en ebanista'),
(5, 'Especialidad en industrial'),
(6, 'Especialidad Maquinaria agricola')


insert into tipo_herramientas values
(1, 'desarmalores-estrellas-plano'),
(2, 'Gatas'),
(3, 'llaves-10-11'),
(4, 'Alicate'),
(5, 'Playo')


	   insert into repuestos values
(123, 'Disco Solidos','WdUions',15),
(124, 'Memorias Ram','Drr4',12),
(213, 'Condensadores','Ciatesa',10),
(214, 'Filtros','Ciatesa',20),
(221, 'Llantas','Continental',14),
(222, 'freno-disco','Continental',9),
(311, 'Disco-Corte','TurbePlan',14),
(312, 'Llantas','Continental',14)


  insert into compra_repuesto values
(1,1, '2021-01-10',15,50.00,2020,123),
(2,1, '2020-03-14',8,75.00,2020,124),
(3,4, '2020-04-16',9,60.00,2020,213),
(4,4, '2020-05-12',10,40.00,2020,214),
(5,2 ,'2021-01-10',11,120.00,2021,221),
(6,2, '2021-01-10',14,80.00,2021,222),
(7,2, '2021-01-10',10,10.00,2021,311)


insert into capacitaciones values
(1,'Electronica','2021-01-10',20,'Secap-Manta',1,150.00),
(2,'Atomotris', '2020-03-14',40,'Secap-Quito',1,200.00),
(3,'informatico', '2020-04-16',60,'Secap-Manta',2,160.00),
(4,'Electronica','2021-01-10',20,'Secap-Manta',2,150.00),
(5,'Atomotris', '2020-03-14',40,'Secap-Quito',3,200.00),
(6,'informatico', '2020-04-16',60,'Secap-Manta',3,160.00)


  insert into especialidad_tecnicos values
(111,3,1,1),
(222,3,1,3),
(333,3,2,2),
(444,3,2,1),
(555,3,3,3),
(666,3,3,2)


   insert into mantenimiento values
(11,'La pc no enciende-se verifica la memoria Ram','2020-04-09','En revicion',20.00,124,2,3,'No Reparado',2),
(13,'El auto-Se verifica los frenos','2021-02-02','Sin revisar',20.00,222,5,3,'No Reparado',4),
(14,'La pc no enciende-se le verifica el disco duro','2020-12-01','En revicion',20.00,123,2,1,'Reparado',4),
(15,'La pc no enciende-se verifica la memoria Ram','2020-11-05','En revicion',20.00,124,2,3,'No Reparado',3)


   insert into solicitud_servicios values
(112,'2020-04-23','2020-04-09','No enciende la pc','laptop lenovo i7 8-ram',2,2),
(113,'2020-12-07','2020-12-13','Refrigeradora-no-congela','Mave-12pie-dos puertas',3,1),
(114,'2020-02-02','2020-02-10','Auto-Sin-frenos','kia 1.6 -color negro-4 puertas',4,5),
(115,'2020-12-01','2020-12-15','No enciende la pc','laptop Hp i3 4-ram',4,2),
(116,'2020-11-05','2020-11-27','No enciende la pc','laptop Asus i9 32-ram',3,2)


   insert into herramientas values
(211,1,10),
(212,3,10),
(213,1,11),
(214,3,11),
(215,1,12),
(216,3,11),
(217,4,11),
(218,5,12),
(219,1,13),
(220,3,13),
(221,4,13),
(222,5,13),
(223,2,13)

