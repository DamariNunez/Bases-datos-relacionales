INSERT INTO rentacar.CLIENTE(cedula, nombre, apellido, email, telefono, direccion, usuario, contrasenia)
VALUES
('1002003000','Pedro','Lopez','pedro@gmail.com','0987654321','C/ Teodoro gomez 2-33 Cubilche','pedro1545','jfMe345'),
('1002003001','Hugo','Benítez','Hugo@gmail.com','0987654322','C/ Teodoro gomez 2-33 Cubilche','Hugo143','vvzzdv'),
('1002003002','Martín','Contreras','Contreras@gmail.com','0987654323','C/ Teodoro gomez 2-33 Contreras143','pedro8','juunt'),
('1002003003','Lucas','Díaz','Lucas@gmail.com','0987654324','C/ Teodoro gomez 2-33 Cubilche','Lucas334','jfMs45'),
('1002003004','Pedro','Contreras','Lucas2@gmail.com','0987654325','C/ Teodoro gomez 2-33 Cubilche','Contreras2r4','34242vddf'),
('1002003005','Mateo','Contreras','Mateo3@gmail.com','0987654326','C/ Teodoro gomez 2-33 Cubilche','Mateo1ew','cbcbxd'),
('1002003006','Leo','Lopez','Leo@gmail.com','0987654327','C/ Teodoro gomez 2-33 Cubilche','Leower','vdvvfwww'),
('1002003007','Daniel','Álvarez','Daniel5@gmail.com','0987654328','C/ Teodoro gomez 2-33 Cubilche','Danielrwrw','fsfsfd'),
('1002003008','Alejandro','Andrade','Andrad6e@gmail.com','0987654329','C/ Teodoro gomez 2-33 Cubilche','Alejandrorwer','nncnb'),
('1002003009','Pablo','Lopez','Pablo2@gmail.com','0987654334','C/ Teodoro gomez 2-33 Cubilche','Lopez43','miuiuiu'),
('2002003001','Alan','Lopez','Alan8@gmail.com','0987654345','C/ Teodoro gomez 2-33 Cubilche','Alan43435','qwq3wsa'),
('2002003002','Pedro','Álvarez','pedro16@gmail.com','0987654354','C/ Teodoro gomez 2-33 Cubilche','pedro122','4erdfvv'),
('2002003003','Hugo','Castro','Hugo33@gmail.com','0987623321','C/ Teodoro gomez 2-33 Cubilche','pedro344','jfMe345'),
('2002003004','Omar','Benítez','Omar66@gmail.com','0987654321','C/ Teodoro gomez 2-33 Cubilche','Omar2223','er234'),
('2002003005','Leo','Duarte','Duarte43@gmail.com','0923654321','C/ Teodoro gomez 2-33 Cubilche','Duarte666','re435tyg'),
('2002003006','Pedro','Lopez','pedro32@gmail.com','0987444321','C/ Teodoro gomez 2-33 Cubilche','pedro4644','vfdw34'),
('2002003007','Omar','Espinoza','Omar34@gmail.com','0987654356','C/ Teodoro gomez 2-33 Cubilche','Omar3646','2wsdf'),
('2002003008','Pedro','Lopez','pedro422@gmail.com','0934654321','C/ Teodoro gomez 2-33 Cubilche','pedro5646','87tfg'),
('2002003009','Lucas','Díaz','Lucas35@gmail.com','0987656321','C/ Teodoro gomez 2-33 Cubilche','Lucas6646','0987ygf'),
('2002003000','Mateo','Andrade','Andrade67@gmail.com','0986254321','C/ Teodoro gomez 2-33 Cubilche','Andrade3464','45rfg');                


INSERT INTO rentacar.CATEGORIA(nombre, gama)
VALUES
('Deportivos','Alta'),
('Deportivos','Media'),
('Compactos','Media'),
('Compactos','Baja'),
('Subcompactos','Alta'),
('Subcompactos','Media'),
('Subcompactos','Baja');


INSERT INTO rentacar.ADMINISTRADOR(usuario, contrasenia, email)
VALUES
('joseAdmin','32453','joseAdmin@gmail.com'),
('mariaAdmin','34533','mariaAdmin@gmail.com'),
('marcosAdmin','43535','marcosAdmin@gmail.com');


INSERT INTO rentacar.VEHICULO(
	marca, 
	modelo, 
	costo_diario, 
	kilometraje, 
	numero_puertas, 
	placa, 
	color, 
	tipo_combustible, 
	numero_plazas, 
	estado_vehiculo,
	codigo_categoria,
	codigo_administrador
)
VALUES
('Ford Fiesta','LS','12','123456','4','pbi1234','rojo','super',5,'disponible',1,2),
('Toyota Corolla','ES','43','123567','3','qwe234','verde','extra',4,'reservado',2,2),
('Honda Civic','HEV','54','123678','4','poi456','negro','super',2,'reservado',1,2),
('Ford Fiesta','IS','65','123789','4','lkj432','negro','diesel',5,'disponible',1,2),
('Kia Rio','CT','102','123890','3','mnb456','verde','diesel',5,'disponible',3,2),
('Toyota Corolla','LC','64','234567','3','ghj576','amarillo','extra',4,'reservado',1,2),
('Ford Fiesta','RX','53','234678','4','sdf970','rojo','super',2,'disponible',1,1),
('Honda Civic','GT','22','234789','3','xcv234','negro','super',4,'reservado',2,1),
('Kia Rio','S','65','234890','4','ret456','verde','extra',5,'reservado',2,2),
('Lexus ES','X','76','345678','4','dfe284','blanco','diesel',4,'disponible',2,1);


INSERT INTO rentacar.FICHA_MANTENIMIENTO(
	fecha, 
	kilometraje, 
	servicio, 
	comentario,
	codigo_vehiculo
)
VALUES
(DATE '2022-01-20','020556','Alineación y balanceo de ruedas','sin ninguna observación',1),
(DATE '2021-02-23','120556','Reemplazar las Bujías','sin ninguna observación',1),
(DATE '2013-03-25','127556','Cambiar el Liquido de Transmission','sin ninguna observación',1),
(DATE '2023-04-26','121524','Cambiar el Lubricante para Engranajes','sin ninguna observación',1),
(DATE '2009-05-20','136556','Cambiar el Líquido de Frenos','sin ninguna observación',1),
(DATE '2011-06-12','163556','Servicio de Dirección Asistida','sin ninguna observación',1),
(DATE '2022-07-20','167556','Limpiar los Inyectores de Combustible','sin ninguna observación',1),
(DATE '2022-08-20','120195','Revise y Reemplace su Válvula PCV','sin ninguna observación',1),

(DATE '2012-01-20','120556','Alineación y balanceo de ruedas','sin ninguna observación',2),
(DATE '2002-02-23','220556','Reemplazar las Bujías','sin ninguna observación',2),
(DATE '2021-03-24','227556','Cambiar el Liquido de Transmission','sin ninguna observación',2),
(DATE '2005-06-12','263556','Servicio de Dirección Asistida','sin ninguna observación',2),
(DATE '2008-07-20','267556','Limpiar los Inyectores de Combustible','sin ninguna observación',2),
(DATE '2020-08-20','220195','Revise y Reemplace su Válvula PCV','sin ninguna observación',2),
(DATE '2022-08-20','221195','Revise y Reemplace su Válvula PCV','sin ninguna observación',2),

(DATE '2012-01-20','120556','Alineación y balanceo de ruedas','sin ninguna observación',3),
(DATE '2002-02-23','220556','Reemplazar las Bujías','sin ninguna observación',3),
(DATE '2021-03-24','227556','Cambiar el Liquido de Transmission','sin ninguna observación',3),
(DATE '2014-04-26','221524','Cambiar el Lubricante para Engranajes','sin ninguna observación',3),
(DATE '2008-07-20','267556','Limpiar los Inyectores de Combustible','sin ninguna observación',3),
(DATE '2020-08-20','220195','Revise y Reemplace su Válvula PCV','sin ninguna observación',3),
(DATE '2022-03-24','237556','Cambiar el Liquido de Transmission','sin ninguna observación',3),

(DATE '2012-01-20','120556','Alineación y balanceo de ruedas','sin ninguna observación',4),
(DATE '2002-02-23','220556','Reemplazar las Bujías','sin ninguna observación',4),
(DATE '2021-03-24','227556','Cambiar el Liquido de Transmission','sin ninguna observación',4),
(DATE '2014-04-26','221524','Cambiar el Lubricante para Engranajes','sin ninguna observación',4),
(DATE '2015-05-20','236556','Cambiar el Líquido de Frenos','sin ninguna observación',4),
(DATE '2005-06-12','263556','Servicio de Dirección Asistida','sin ninguna observación',4),
(DATE '2020-08-20','220195','Revise y Reemplace su Válvula PCV','sin ninguna observación',4),
(DATE '2004-01-23','221556','Reemplazar las Bujías','sin ninguna observación',4),

(DATE '2012-01-20','120556','Alineación y balanceo de ruedas','sin ninguna observación',5),
(DATE '2002-02-23','220556','Reemplazar las Bujías','sin ninguna observación',5),
(DATE '2021-03-24','227556','Cambiar el Liquido de Transmission','sin ninguna observación',5),
(DATE '2014-04-26','221524','Cambiar el Lubricante para Engranajes','sin ninguna observación',5),
(DATE '2015-05-20','236556','Cambiar el Líquido de Frenos','sin ninguna observación',5),
(DATE '2005-06-12','263556','Servicio de Dirección Asistida','sin ninguna observación',5),
(DATE '2008-07-20','267556','Limpiar los Inyectores de Combustible','sin ninguna observación',5),
(DATE '2015-01-20','220556','Alineación y balanceo de ruedas','sin ninguna observación',5),

(DATE '2012-01-20','120556','Alineación y balanceo de ruedas','sin ninguna observación',6),
(DATE '2002-02-23','220556','Reemplazar las Bujías','sin ninguna observación',6),
(DATE '2015-05-20','236556','Cambiar el Líquido de Frenos','sin ninguna observación',6),
(DATE '2005-06-12','263556','Servicio de Dirección Asistida','sin ninguna observación',6),
(DATE '2008-07-20','267556','Limpiar los Inyectores de Combustible','sin ninguna observación',6),
(DATE '2020-08-20','220195','Revise y Reemplace su Válvula PCV','sin ninguna observación',6),
(DATE '2006-06-12','263556','Servicio de Dirección Asistida','sin ninguna observación',6),

(DATE '2014-04-26','221524','Cambiar el Lubricante para Engranajes','sin ninguna observación',7),
(DATE '2015-05-20','236556','Cambiar el Líquido de Frenos','sin ninguna observación',7),
(DATE '2005-06-12','263556','Servicio de Dirección Asistida','sin ninguna observación',7),
(DATE '2008-07-20','267556','Limpiar los Inyectores de Combustible','sin ninguna observación',7),
(DATE '2020-08-20','220195','Revise y Reemplace su Válvula PCV','sin ninguna observación',7),
(DATE '2015-04-26','221624','Cambiar el Lubricante para Engranajes','sin ninguna observación',7),

(DATE '2012-01-20','120556','Alineación y balanceo de ruedas','sin ninguna observación',8),
(DATE '2002-02-23','220556','Reemplazar las Bujías','sin ninguna observación',8),
(DATE '2021-03-24','227556','Cambiar el Liquido de Transmission','sin ninguna observación',8),
(DATE '2014-04-26','221524','Cambiar el Lubricante para Engranajes','sin ninguna observación',8),
(DATE '2015-05-20','236556','Cambiar el Líquido de Frenos','sin ninguna observación',8),
(DATE '2005-06-12','263556','Servicio de Dirección Asistida','sin ninguna observación',8),
(DATE '2014-12-26','224524','Cambiar el Lubricante para Engranajes','sin ninguna observación',8),

(DATE '2012-01-20','120556','Alineación y balanceo de ruedas','sin ninguna observación',9),
(DATE '2002-02-23','220556','Reemplazar las Bujías','sin ninguna observación',9),
(DATE '2021-03-24','227556','Cambiar el Liquido de Transmission','sin ninguna observación',9),
(DATE '2014-04-26','221524','Cambiar el Lubricante para Engranajes','sin ninguna observación',9),
(DATE '2008-07-20','267556','Limpiar los Inyectores de Combustible','sin ninguna observación',9),
(DATE '2020-08-20','220195','Revise y Reemplace su Válvula PCV','sin ninguna observación',9),
(DATE '2021-05-24','228556','Cambiar el Liquido de Transmission','sin ninguna observación',9),
(DATE '2021-07-24','237556','Cambiar el Liquido de Transmission','sin ninguna observación',9);


INSERT INTO rentacar.RESERVACION(
	fecha_retiro, 
	fecha_entrega, 
	comentario, 
	tipo_kilometraje,
	valor,
	estado_reservacion,
	codigo_cliente,
	codigo_vehiculo
)
VALUES
(DATE '2022-01-20',DATE '2023-01-20','sin ninguna novedad','controlado',233,'aceptado',1,1),
(DATE '2021-02-23',DATE '2023-01-20','sin ninguna novedad','controlado',223,'cancelado',2,1),
(DATE '2013-03-25',DATE '2015-01-20','sin ninguna novedad','libre',243,'aceptado',3,2),
(DATE '2023-04-26',DATE '2024-01-20','sin ninguna novedad','controlado',253,'aceptado',4,3),
(DATE '2009-05-20',DATE '2010-01-20','sin ninguna novedad','controlado',263,'cancelado',5,4),
(DATE '2011-06-12',DATE '2012-01-20','sin ninguna novedad','libre',273,'aceptado',6,5),
(DATE '2022-07-20',DATE '2023-01-20','sin ninguna novedad','controlado',283,'cancelado',7,6),
(DATE '2022-08-20',DATE '2022-12-20','sin ninguna novedad','libre',213,'aceptado',8,7),

(DATE '2022-01-20',DATE '2023-01-20','sin ninguna novedad','controlado',233,'aceptado',9,6),
(DATE '2021-02-23',DATE '2023-01-20','sin ninguna novedad','controlado',223,'cancelado',2,10),
(DATE '2013-03-25',DATE '2015-01-20','sin ninguna novedad','libre',243,'aceptado',4,9),
(DATE '2023-04-26',DATE '2024-01-20','sin ninguna novedad','controlado',253,'aceptado',3,3),
(DATE '2009-05-20',DATE '2010-01-20','sin ninguna novedad','libre',263,'cancelado',1,8),
(DATE '2011-06-12',DATE '2012-01-20','sin ninguna novedad','controlado',273,'aceptado',4,5),
(DATE '2022-07-20',DATE '2023-01-20','sin ninguna novedad','libre',283,'cancelado',5,6),
(DATE '2022-08-20',DATE '2022-12-20','sin ninguna novedad','controlado',213,'aceptado',1,7),

(DATE '2022-01-20',DATE '2023-01-20','sin ninguna novedad','controlado',233,'aceptado',2,3),
(DATE '2021-02-23',DATE '2023-01-20','sin ninguna novedad','controlado',223,'cancelado',2,4),
(DATE '2013-03-25',DATE '2015-01-20','sin ninguna novedad','controlado',243,'aceptado',3,2),
(DATE '2023-04-26',DATE '2024-01-20','sin ninguna novedad','libre',253,'aceptado',4,5),
(DATE '2009-05-20',DATE '2010-01-20','sin ninguna novedad','controlado',263,'cancelado',5,4),
(DATE '2011-06-12',DATE '2012-01-20','sin ninguna novedad','libre',273,'aceptado',6,3),
(DATE '2022-07-20',DATE '2023-01-20','sin ninguna novedad','controlado',283,'cancelado',7,1),
(DATE '2022-08-20',DATE '2022-12-20','sin ninguna novedad','libre',213,'aceptado',8,10),

(DATE '2022-01-20',DATE '2023-01-20','sin ninguna novedad','controlado',233,'aceptado',12,3),
(DATE '2021-02-23',DATE '2023-01-20','sin ninguna novedad','controlado',223,'cancelado',14,4),
(DATE '2013-03-25',DATE '2015-01-20','sin ninguna novedad','controlado',243,'aceptado',15,2),
(DATE '2023-04-26',DATE '2024-01-20','sin ninguna novedad','libre',253,'aceptado',14,5),
(DATE '2009-05-20',DATE '2010-01-20','sin ninguna novedad','controlado',263,'cancelado',15,4),
(DATE '2011-06-12',DATE '2012-01-20','sin ninguna novedad','libre',273,'aceptado',16,3),
(DATE '2022-07-20',DATE '2023-01-20','sin ninguna novedad','controlado',283,'cancelado',17,1),
(DATE '2022-08-20',DATE '2022-12-20','sin ninguna novedad','libre',213,'aceptado',18,10);


INSERT INTO rentacar.FACTURA_ENCABEZADO(
	fecha, 
	subtotal, 
	iva, 
	total,
	codigo_reservacion
)
VALUES
(DATE '2022-01-20',23,0.12,200,1),
(DATE '2021-02-23',22,0.12,210,2),
(DATE '2013-03-25',34,0.12,230,3),
(DATE '2023-04-26',65,0.12,250,4),
(DATE '2009-05-20',43,0.12,300,5),
(DATE '2011-06-12',63,0.12,250,6),
(DATE '2022-07-20',43,0.12,340,7),
(DATE '2022-08-20',23,0.12,550,8),

(DATE '2022-01-20',14,0.12,400,9),
(DATE '2021-02-23',33,0.12,252,10),
(DATE '2013-03-25',24,0.12,320,11),
(DATE '2023-04-26',54,0.12,120,12),
(DATE '2009-05-20',46,0.12,110,13),
(DATE '2011-06-12',56,0.12,120,14),
(DATE '2022-07-20',46,0.12,210,15),
(DATE '2022-08-20',56,0.12,200,16),

(DATE '2022-01-20',34,0.12,220,17),
(DATE '2021-02-23',43,0.12,430,18),
(DATE '2013-03-25',54,0.12,120,19),
(DATE '2023-04-26',65,0.12,440,20),
(DATE '2009-05-20',45,0.12,500,21),
(DATE '2011-06-12',26,0.12,230,22),
(DATE '2022-07-20',45,0.12,330,23),
(DATE '2022-08-20',26,0.12,440,24),

(DATE '2022-01-20',45,0.12,290,25),
(DATE '2021-02-23',65,0.12,230,26),
(DATE '2013-03-25',76,0.12,150,27),
(DATE '2023-04-26',87,0.12,160,28),
(DATE '2009-05-20',66,0.12,150,29),
(DATE '2011-06-12',89,0.12,150,30),
(DATE '2022-07-20',66,0.12,160,31),
(DATE '2022-08-20',29,0.12,610,32);


INSERT INTO rentacar.FACTURA_DETALLE(
	cantidad, 
	total_unitario, 
	total, 
	descripcion,
	codigo_factura_encabezado
)
VALUES               
(1,23,200,'alquiler vehiculo',1),
(1,100,100,'alquiler gps',1),
(1,22,210,'alquiler vehiculo',2),
(1,50,50,'alquiler silla bebe',2),
(1,34,230,'alquiler vehiculo',3),
(1,50,50,'alquiler silla bebe',3),
(1,65,250,'alquiler vehiculo',4),
(1,100,100,'alquiler gps',4),
(1,43,300,'alquiler vehiculo',5),
(1,50,50,'alquiler silla bebe',5),
(1,63,250,'alquiler vehiculo',6),
(1,100,100,'alquiler gps',6),
(1,43,340,'alquiler vehiculo',7),
(1,23,550,'alquiler vehiculo',8),
(1,100,100,'alquiler gps',8),

(1,14,400,'alquiler vehiculo',9),
(1,33,252,'alquiler vehiculo',10),
(1,100,100,'alquiler gps',10),
(1,24,320,'alquiler vehiculo',11),
(1,50,50,'alquiler silla bebe',11),
(1,54,120,'alquiler vehiculo',12),
(1,46,110,'alquiler vehiculo',13),
(1,100,100,'alquiler gps',13),
(1,56,120,'alquiler vehiculo',14),
(1,50,50,'alquiler silla bebe',14),
(1,46,210,'alquiler vehiculo',15),
(1,100,100,'alquiler gps',15),
(1,56,200,'alquiler vehiculo',16),
(1,100,100,'alquiler gps',16),

(1,34,220,'alquiler vehiculo',17),
(1,43,430,'alquiler vehiculo',18),
(1,100,100,'alquiler gps',18),
(1,54,120,'alquiler vehiculo',19),
(1,50,50,'alquiler silla bebe',19),
(1,100,100,'alquiler gps',19),
(1,65,440,'alquiler vehiculo',20),
(1,50,50,'alquiler silla bebe',20),
(1,45,500,'alquiler vehiculo',21),
(1,26,230,'alquiler vehiculo',22),
(1,100,100,'alquiler gps',22),
(1,45,330,'alquiler vehiculo',23),
(1,50,50,'alquiler silla bebe',23),
(1,26,440,'alquiler vehiculo',24),
(1,100,100,'alquiler gps',24),

(1,45,290,'alquiler vehiculo',25),
(1,50,50,'alquiler silla bebe',25),
(1,65,230,'alquiler vehiculo',26),
(1,100,100,'alquiler gps',26),
(1,76,150,'alquiler vehiculo',27),
(1,87,160,'alquiler vehiculo',28),
(1,100,100,'alquiler gps',28),
(1,50,50,'alquiler silla bebe',28),
(1,66,150,'alquiler vehiculo',29),
(1,89,150,'alquiler vehiculo',30),
(1,100,100,'alquiler gps',30),
(1,66,160,'alquiler vehiculo',31),
(1,100,100,'alquiler gps',31),
(1,29,610,'alquiler vehiculo',32),
(1,50,50,'alquiler silla bebe',32);


