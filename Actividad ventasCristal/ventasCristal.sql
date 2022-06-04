/*Creacion de base de datos*/
CREATE DATABASE VentasCristal;

/*uso de base de datos*/
USE VentasCristal;

/*Creacion de tablas*/
CREATE TABLE cliente(
	id_cliente INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	nombre_cliente VARCHAR(25) NOT NULL,
	apellido_cliente VARCHAR(25) NOT NULL, 
	direccion_cliente VARCHAR(25) NOT NULL,
	telefono_cliente INT NULL,
	email_cliente VARCHAR(25) NULL,
	nit_cliente INT NULL
);

CREATE TABLE proveedor(
	id_proveedor INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	nombre_proveedor VARCHAR(25) NOT NULL,
	telefono_proveedor INT NOT NULL,
	empresa_proveedor VARCHAR(25) NOT NULL,
	direccion_proveedor VARCHAR(25) NOT  NULL
);

CREATE TABLE factura(
	id_factura INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	numero_factura INT NOT NULL,
	total_factura DOUBLE NOT NULL,
	id_cliente_fk INT NOT NULL
);

CREATE TABLE producto(
	id_producto INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	nombre_producto VARCHAR(25) NOT NULL,
	cantidad_producto INT NOT NULL,
	precio_producto double NOT NULL,
	costo_producto double NOT NULL,
	id_proveedor_fk INT NOT NULL
);

CREATE TABLE facturaProducto(
	id_factura_fk INT NOT NULL,
	id_producto_fk INT NOT NULL
);

/*Creacion de relaciones entre tablas*/

ALTER TABLE VentasCristal.factura ADD CONSTRAINT FK1 FOREIGN KEY (id_cliente_fk)
REFERENCES VentasCristal.cliente (id_cliente);

ALTER TABLE VentasCristal.producto ADD CONSTRAINT FK2 FOREIGN KEY (id_proveedor_fk)
REFERENCES VentasCristal.proveedor (id_proveedor);

ALTER TABLE VentasCristal.facturaproducto ADD CONSTRAINT FK3 FOREIGN KEY (id_factura_fk)
REFERENCES VentasCristal.factura (id_factura);
ALTER TABLE VentasCristal.facturaproducto ADD CONSTRAINT FK4 FOREIGN KEY (id_producto_fk)
REFERENCES VentasCristal.producto (id_producto);

/*Insercion de datos en las tablas*/

INSERT INTO cliente(nombre_cliente, apellido_cliente, direccion_cliente, telefono_cliente, email_cliente, nit_cliente)
VALUES ('Mario', 'Gomez', 'Zona 5 Ciudad', '48925767', 'MarioX@gmail.com', '28546898'),
('Monica', 'Garcia', 'Zona 1 Ciudad', '45935821', 'mgarcia@gmail.com', '15787956'),
('Ana', 'Cruz', 'Zona 10 Ciudad', '26848269', 'bonitaAC@gmail.com', '25879875'),
('Rosario', 'Arana', 'Zona 11 Ciudad', '28423168', 'AranaR@gmail.com',  '32587898'),
('Antonio', 'Ben', 'Zona 1 Ciudad', '66578987', 'tono8@gmail.com',  '87598547'),
('Erick', 'Gonzalez', 'Zona 11 Ciudad', '36587425', 'erickcitoG@gmail.com',  '38987548'),
('Herbert', 'Sanchez', 'Zona 8 Ciudad', '98702546', 'hs1989@gmail.com',  '25878987'),
('Lucy', 'Lorenzana', 'Zona 3 Ciudad', '32456789', 'LucitaL@gmail.com',  '35874589'),
('Karina', 'Gutierrez', 'Zona 2 Ciudad', '64879630', 'Karinalinda12@gmail.com',  '35487758'),
('Carlos', 'Ramirez', 'Zona 2 Ciudad', '35871564', 'CharlieR@gmail.com',  '33365478'),
('Juan', 'Cordova', 'Zona 10 Ciudad', '32458741', 'JuanchoCordova@gmail.com',  '58789874'),
('Pedro', 'Calderon', 'Zona 9 Ciudad', '21045987', 'Pedrito958@gmail.com',  '99875245'),
('Peter', 'Rodriguez', 'Zona 13 Ciudad', '87541268', 'Peter.Rodriguez@gmail.com',  '58755478'),
('Jose', 'Morales', 'Zona 13 Ciudad', '68742510', 'ChepeMoralesgmail.com',  '36566587'),
('Renato', 'Gomez', 'Zona 16 Ciudad', '35874152', 'RenaGo38@gmail.com',  '58745898');

INSERT INTO proveedor(nombre_proveedor, telefono_proveedor, empresa_proveedor, direccion_proveedor)
VALUES ('Lourdes', '58546898', 'La Poderosa', 'Zona 5 La Asuncion'),
('Karina', '95787956', 'Solo Ganancias', 'Zona 1 Ciudad'),
('Alberto', '25879875', 'Distribuidora Super', 'Zona 10 Ciudad'),
('Carlos', '32587898',  'La Mejor', 'Zona 11, Carabanchel'),
('Ramiro', '87598547', 'BBB', 'Zona 1 Ciudad');


INSERT INTO producto(nombre_producto, cantidad_producto, precio_producto, costo_producto, id_proveedor_fk)
VALUES ('arroz blanco', '50', '10.00', '8.00', '1'),
('maiz blanco', '75', '10.00', '8.00', '2'),
('arroz criollo', '100', '15.00', '12.00', '3'),
('arroz integral', '150', '7.00', '5.00', '4'),
('maiz negro', '300', '3.00', '2.00', '5'),
('maiz amarillo', '200', '12.00', '10.00', '1'),
('frijol negro', '250', '7.00', '5.00', '2'),
('frijol blanco', '500', '8.00', '5.00', '3'),
('frijol rojo', '800', '5.00', '3.00', '4'),
('azucar morena', '100', '9.00', '6.00', '5'),
('azucar blanca', '1500', '11.00', '8.00', '1'),
('azucar refinada', '250', '4.50', '2.00', '2'),
('trigo', '500', '4.50', '3.00',  '4'),
('cebada', '400', '20.00', '15.00',  '4'),
('lenteja', '800', '11.00', '9.00',  '5');

INSERT INTO factura(numero_factura, total_factura, id_cliente_fk)
VALUES ('768', '500.00', '3');
('568', '3000.00', '1'),
('888', '700.00', '3');
('35', '3000.00', '2'),
('89', '2500.00', '3'),
('56', '8000.00', '4'),
('150', '700.00', '5'),
('335', '500.00', '2'),
('5889', '500.00', '3'),
('556', '200.00', '13'),
('1550', '700.00', '5'),
('535', '56.00', '2'),
('889', '989.00', '3'),
('356', '16.00', '8'),
('6150', '58.00', '5'),
('8335', '45.00', '10'),
('889', '87.00', '12'),
('6556', '580.00', '14'),
('150', '3600.00', '15');

/*Lista el nombre completo, telefono e email de los clientes*/
SELECT p.nombre_cliente, p.telefono_cliente, p.email_cliente 
FROM ventascristal.cliente p;

/*Lista el NIT, nombre y apellido del cliente*/
SELECT p.nit_cliente, p.nombre_cliente, p.apellido_cliente 
FROM ventascristal.cliente p;

/*Lista la cantidad total de clientes registrados*/
SELECT COUNT(p.id_cliente) 
FROM ventascristal.cliente p;

/*Lista el nombre del producto y el total del costo de los productos similares (arroz 1, arroz 1)*/
SELECT c.nombre_producto, SUM(c.costo_producto) AS 'Total Costo '
FROM ventascristal.producto c
WHERE c.nombre_producto LIKE '%arroz%'
GROUP BY c.nombre_producto;

/*Lista el nombre del producto y el total del precio de los productos similares (arroz 1, arroz 1)*/
SELECT c.nombre_producto, SUM(c.precio_producto) AS 'Total Precio '
FROM ventascristal.producto c
WHERE c.nombre_producto LIKE '%arroz%'
GROUP BY c.nombre_producto;

/*Lista la cantidad total de los productos registrados*/
SELECT SUM(c.cantidad_producto) AS 'productos registrados'
FROM ventascristal.producto c;

/*Lista el nombre del producto y la cantidad de cada uno*/
SELECT c.nombre_producto, SUM(c.cantidad_producto) AS 'productos registrados'
FROM ventascristal.producto c
GROUP BY c.nombre_producto;

/*Lista el nombre, telefono y empresa de los proveedores*/
SELECT p.nombre_proveedor, p.telefono_proveedor, p.empresa_proveedor
FROM ventascristal.proveedor p

/*Mostrar los clientes con mas facturas*/
SELECT c.nombre_cliente, COUNT(f.id_cliente_fk) 
FROM ventascristal.factura f
INNER JOIN 
ventascristal.cliente c
ON f.id_cliente_fk = c.id_cliente
GROUP BY c.nombre_cliente
HAVING COUNT(f.id_cliente_fk) > 3;


/*Mostrar el nombre del producto, el costo y el nombre y empresa del proveedor que lo entrego*/
SELECT p.nombre_producto, p.costo_producto, r.nombre_proveedor, r.empresa_proveedor 
FROM ventascristal.producto p
INNER JOIN 
ventascristal.proveedor r
ON p.id_proveedor_fk = r.id_proveedor;

/*Mostrar el nombre del cliente y las diferentes facturas que este tiene registradas*/
SELECT c.nombre_cliente, f.numero_factura 
FROM ventascristal.factura f
INNER JOIN 
ventascristal.cliente c
ON f.id_cliente_fk = c.id_cliente
GROUP BY f.numero_factura 
ORDER BY c.nombre_cliente asc

SELECT c.nombre_cliente, f.numero_factura, p.nombre_producto
FROM ventascristal.factura f
INNER JOIN 
ventascristal.cliente c
ON f.id_cliente_fk = c.id_cliente
INNER JOIN
ventascristal.facturaproducto fp
ON fp.id_factura_fk = f.id_factura
INNER JOIN
ventascristal.producto p
ON fp.id_producto_fk = p.id_producto;
GROUP BY f.numero_factura;


