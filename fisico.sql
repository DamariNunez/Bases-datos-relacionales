CREATE SCHEMA rentacar;

CREATE TABLE rentacar.cliente(                                                    
	codigo_cliente serial NOT NULL,                                            
	cedula character varying(10) NOT NULL, 
	nombre character varying(20) NOT NULL, 
	apellido character varying(20) NOT NULL, 
	email character varying(50) NOT NULL, 
	telefono character varying(10) NOT NULL, 
	direccion character varying(100) NOT NULL, 
	usuario character varying(15) NOT NULL, 
	contrasenia character varying(15) NOT NULL,
	CONSTRAINT cp_cliente PRIMARY KEY (codigo_cliente)
);

CREATE TABLE rentacar.categoria(  
	codigo_categoria serial NOT NULL, 
	nombre character varying(50) NOT NULL, 
	gama character varying(50) NOT NULL,
	CONSTRAINT cp_categoria PRIMARY KEY (codigo_categoria)
); 

CREATE TABLE rentacar.administrador(  
	codigo_administracion serial NOT NULL,
	usuario character varying(15) NOT NULL,
	contrasenia character varying(15) NOT NULL,
	email character varying(50) NOT NULL,
	CONSTRAINT cp_administracion PRIMARY KEY (codigo_administracion)
); 

CREATE DOMAIN rentacar.tipo_combustible_vehiculo as VARCHAR(10)
	CHECK (VALUE IN ('super','extra','diesel'));

CREATE DOMAIN rentacar.estado_vehiculo as VARCHAR(10)
	CHECK (VALUE IN ('reservado','disponible'));

CREATE TABLE rentacar.vehiculo(  
	codigo_vehiculo serial NOT NULL,
	marca character varying(100) NOT NULL,
	placa character varying(10) NOT NULL,
	modelo character varying(50) NOT NULL,
	color character varying(50) NOT NULL,
	tipo_combustible rentacar.tipo_combustible_vehiculo NOT NULL default 'super',
	numero_plazas int not null,
	numero_puertas int not null,
	kilometraje decimal not null,
	costo_diario decimal not null,
	estado_vehiculo rentacar.estado_vehiculo not null default 'disponible',
	codigo_categoria int NOT NULL,
	codigo_administrador int NOT NULL,
	CONSTRAINT cp_vehiculo PRIMARY KEY (codigo_vehiculo),
	CONSTRAINT caj_vehiculo_categoria FOREIGN KEY (codigo_categoria) references rentacar.categoria
			ON DELETE RESTRICT
			ON UPDATE CASCADE,
	CONSTRAINT caj_vehiculo_administrador FOREIGN KEY (codigo_administrador) references rentacar.administrador
			ON DELETE RESTRICT
			ON UPDATE CASCADE
); 

CREATE DOMAIN rentacar.estado_reservacion VARCHAR(10)
	CHECK (VALUE IN ('aceptado','cancelado'));

CREATE DOMAIN rentacar.tipo_kilometraje_reservacion VARCHAR(10)
	CHECK (VALUE IN ('libre', 'controlado'));

CREATE TABLE rentacar.reservacion(  
	codigo_reservacion serial NOT NULL,
	valor decimal NOT NULL,
	fecha_retiro date NOT NULL,
	fecha_entrega date NOT NULL,
	comentario text NOT NULL,
	tipo_kilometraje rentacar.tipo_kilometraje_reservacion NOT NULL default 'libre',
	estado_reservacion rentacar.estado_reservacion NOT NULL default 'aceptado',
	codigo_cliente int NOT NULL,
	codigo_vehiculo int NOT NULL,
	CONSTRAINT cp_reservacion PRIMARY KEY (codigo_reservacion),
	CONSTRAINT caj_reservacion_cliente FOREIGN KEY (codigo_cliente) references rentacar.cliente
			ON DELETE RESTRICT
			ON UPDATE CASCADE,
	CONSTRAINT caj_reservacion_vehiculo FOREIGN KEY (codigo_vehiculo) references rentacar.vehiculo
			ON DELETE RESTRICT
			ON UPDATE CASCADE
);

CREATE TABLE rentacar.ficha_mantenimiento(  
	codigo_ficha_mantenimiento serial NOT NULL,
	fecha date NOT NULL,
	kilometraje decimal NOT NULL,
	servicio character varying(200) NOT NULL,
	comentario character varying(200) NOT NULL,
	codigo_vehiculo int NOT NULL,
	CONSTRAINT cp_ficha_mantenimiento PRIMARY KEY (codigo_ficha_mantenimiento),
	CONSTRAINT caj_vehiculo_mantenimiento FOREIGN KEY (codigo_vehiculo) references rentacar.vehiculo
			ON DELETE RESTRICT
			ON UPDATE CASCADE
); 

CREATE TABLE rentacar.factura_encabezado(  
	codigo_factura_encabezado serial NOT NULL,
	fecha date NOT NULL,
	subtotal decimal NOT NULL,
	iva decimal NOT NULL,
	total decimal NOT NULL,
	codigo_reservacion int NOT NULL,
	CONSTRAINT cp_factura_encabezado PRIMARY KEY (codigo_factura_encabezado),
	CONSTRAINT caj_factura_encabezado_reservacion FOREIGN KEY (codigo_reservacion) references rentacar.reservacion
			ON DELETE RESTRICT
			ON UPDATE CASCADE
); 

CREATE TABLE rentacar.factura_detalle(  
	codigo_factura_detalle serial NOT NULL,
	total decimal NOT NULL,
	total_unitario decimal NOT NULL,
	cantidad int NOT NULL,
	descripcion character varying(200) NOT NULL,
	codigo_factura_encabezado int NOT NULL,
	CONSTRAINT cp_factura_detalle PRIMARY KEY (codigo_factura_detalle),
	CONSTRAINT caj_factura_detalle_encabezado FOREIGN KEY (codigo_factura_encabezado) references rentacar.factura_encabezado
			ON DELETE RESTRICT
			ON UPDATE CASCADE
); 

CREATE VIEW rentacar.view_vehiculos_disponibles AS 
SELECT v.codigo_vehiculo, v.marca, v.placa, v.modelo, v.costo_diario, v.estado_vehiculo FROM rentacar.vehiculo v
WHERE v.estado_vehiculo = 'disponible';