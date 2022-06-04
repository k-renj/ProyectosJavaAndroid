CREATE DATABASE bdprueba;
USE bdprueba;

CREATE TABLE vehiculo(
	id_vehiculo INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	marca_vehiculo VARCHAR(25) NOT NULL,
	modelo_vehiculo VARCHAR(25) NOT NULL,
	placa_vehiculo VARCHAR(25) NOT NULL,
	color_vehiculo VARCHAR(25) NOT NULL
);

CREATE TABLE electronico(
	id_electronico INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	nombre_electronico VARCHAR(25) NOT NULL,
	gama_electronico VARCHAR(25) NOT NULL,
	color_electronico VARCHAR(25) NOT NULL,
	tamanio_electronico VARCHAR(25) NOT NULL
);

CREATE TABLE pais(
	id_pais INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	nombre_pais VARCHAR(25) NOT NULL,
	continente_pais VARCHAR(25) NOT NULL,
	codigo_posta_pais VARCHAR(25) NOT NULL,
	region_pais VARCHAR(25) NULL
);

ALTER TABLE pais MODIFY codigo_posta_pais INT;

INSERT INTO vehiculo (marca_vehiculo, modelo_vehiculo, placa_vehiculo, color_vehiculo)
VALUES ('Toyota', '1992', 'p20659', 'verde policromado'),
('Toyota', '1995', 'p15665', 'rojo policromado'),
('Nisan',  '2017', 'p464645', 'gris'),
('Nisan',  '2015', 'p46546', 'azul policromado'),
('Honda', '2005', 'p64546', 'verde olivo'),
('Honda',  '2018', 'p454546', 'amarillo policromado'),
('Hyundai',  '1975', 'p543343', 'rosado policromado'),
('Hyundai', '2020', 'p454545', 'negro policromado'),
('Chevrolet', '2018', 'p46576', 'celeste policromado'),
('Dacia', '2016', 'p446433', 'blanco');

INSERT INTO electronico (nombre_electronico, gama_electronico, color_electronico, tamanio_electronico)
VALUES ('computadora', 'alta', 'rojo', 'azul'),
('mouse', 'media', 'baja', 'rojo' 'pequenio'),
('teclado',  'alta', 'negro', 'gris'),
('laptop',  'media', 'negro', 'grande'),
('ipad', 'media', 'gris', 'mediano'),
('camara digital',  'alta', 'rojo', 'mediano'),
('smartphone',  'media', 'gris', 'grande'),
('hand held', 'alta', 'gris', 'pequenio'),
('televisor', 'baja', 'gris', 'pequenio'),
('radio', 'baja', 'negro', 'pequenio');

INSERT INTO pais (nombre_pais, continente_pais, codigo_posta_pais, region_pais)
VALUES ('Guatemala', 'America', '548', 'Metropolitana'),
('El Salvador', 'America', '258', 'rojo' 'Metropolitana'),
('Nicaragua',  'America', '926', 'Metropolitana'),
('Costa Rica',  'America', '473', 'Metropolitana'),
('Honduras', 'America', '504', 'Oriental'),
('Israel',  'Europa', '85138', 'Cordillera Central'),
('Japon',  'Asia', '1530061', 'Kanto'),
('Corea del Sur', 'Asia', '77911', 'Jeolla del Norte'),
('Australia', 'Oceania', '5800', 'Occidental'),
('Nueva Zelanda', 'Oceania', '2105', 'Norte');

SHOW FULL TABLES FROM bdprueba;

SELECT continente_pais FROM pais;

SELECT p.nombre_pais, p.continente_pais, p.region_pais, m.marca_vehiculo, m.placa_vehiculo, m.color_vehiculo, 
e.nombre_electronico, e.gama_electronico, e.tamanio_electronico
FROM pais p, vehiculo m, electronico e

SELECT * FROM vehiculo

UPDATE vehiculo 
SET marca_vehiculo = 'Suzuki', modelo_vehiculo = '2022', color_vehiculo = 'verde olivo'
WHERE id_vehiculo = 3
UPDATE vehiculo 
SET marca_vehiculo = 'Subaru', modelo_vehiculo = '1985', color_vehiculo = 'cafe'
WHERE id_vehiculo = 8

SELECT * FROM electronico
UPDATE electronico 
SET nombre_electronico = 'reloj', gama_electronico = 'media', color_electronico = 'morado', tamanio_electronico = 'pequenio'
WHERE id_electronico = 3
UPDATE electronico 
SET nombre_electronico = 'teclado', gama_electronico = 'baja', color_electronico = 'rojo', tamanio_electronico = 'grande'
WHERE id_electronico = 8


SELECT * FROM pais
UPDATE pais
SET nombre_pais = 'Jamaica', continente_pais = 'America', codigo_posta_pais = '11418', region_pais = 'Caribe'
WHERE id_pais = 3
UPDATE pais
SET nombre_pais = 'Paris', continente_pais = 'Europa', codigo_posta_pais = '75000', region_pais = 'Isla de Francia'
WHERE id_pais = 8

UPDATE pais
SET nombre_pais = 'Aruba', continente_pais = 'America', codigo_posta_pais = '297', region_pais = 'Caribe'
WHERE id_pais = 5

DELETE FROM vehiculo
WHERE id_vehiculo = 10;

DELETE FROM electronico
WHERE id_electronico = 10;

DELETE FROM pais
WHERE id_pais = 10;

ALTER TABLE vehiculo DROP COLUMN color_vehiculo; 
ALTER TABLE electronico DROP COLUMN tamanio_electronico;
ALTER TABLE pais DROP COLUMN region_pais;
