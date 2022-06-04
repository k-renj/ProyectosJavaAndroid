CREATE DATABASE bdsmartphone;
USE bdsmartphone;

CREATE TABLE propietario(
	Id_propietario INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	Nombre_propietario VARCHAR(25) NOT NULL,
	Apellido_propietario VARCHAR(25) NOT NULL,
	Sexo_propietario CHAR(1) NOT NULL,
	Edad_propietario INT(3) NOT NULL,
	Email_propietario VARCHAR(25) NOT NULL,propietario
	Telefono_propietario VARCHAR(8) NOT NULL,
	Marca_propietario VARCHAR(25) NOT NULL,
	Empresa_propietario VARCHAR(25) NOT NULL,
	Saldo_propietario DOUBLE(4,2) NOT NULL,
	Estado_propietario VARCHAR(10) NULL
);

INSERT INTO propietario(Nombre_propietario, Apellido_propietario, Sexo_propietario, Edad_propietario, 
Email_propietario, Telefono_propietario, Marca_propietario, Empresa_propietario, Saldo_propietario, 
Estado_propietario)
VALUES ('Mario', 'Gomez', 'M', '28', 'MarioX@gmail.com', '48925767', 'Samsung', 'Telefonica', '50.15', 'activo'),
('Monica', 'Garcia', 'F', '25', 'mgarcia@gmail.com', '45935821', 'Huawei', 'Claro', '99.99', 'inactivo'),
('Ana', 'Cruz', 'F', '20', 'bonitaAC@gmail.com', '26848269', 'Motorola', 'Tigo', '80.20', 'moroso'),
('Rosario', 'Arana', 'F', '23', 'AranaR@gmail.com', '28423168', 'Apple', 'Telefonica', '99.99', 'activo'),
('Antonio', 'Ben', 'M', '18', 'tono8@gmail.com', '66578987', 'Xiaomi', 'Tigo', '10.00', 'activo'),
('Erick', 'Gonzalez', 'M', '18', 'erickcitoG@gmail.com', '36587425', 'LG', 'Claro', '00.00', 'inactivo'),
('Herbert', 'Sanchez', 'M', '32', 'hs1989@gmail.com', '98702546', 'Samsung', 'Telefonica', '80.15', 'moroso'),
('Lucy', 'Lorenzana', 'F', '80', 'LucitaL@gmail.com', '32456789', 'LG', 'Tigo', '25.35', 'activo'),
('Karina', 'Gutierrez', 'F', '28', 'Karinalinda12@gmail.com', '64879630', 'Xiaomi', 'Claro', '70.00', 'moroso'),
('Carlos', 'Ramirez', 'M', '26', 'CharlieR@gmail.com', '35871564', 'Motorola', 'Tigo', '99.99', 'inactivo'),
('Juan', 'Cordova', 'M', '40', 'JuanchoCordova@gmail.com', '32458741', 'Huawei', 'Claro', '10.55', 'activo'),
('Pedro', 'Calderon', 'M', '15', 'Pedrito958@gmail.com', '21045987', 'Samsung', 'Telefonica', '35.12', 'moroso'),
('Peter', 'Rodriguez', 'M', '40', 'Peter.Rodriguez@gmail.com', '87541268', 'LG', 'Claro', '75.21', 'activo'),
('Jose', 'Morales', 'M', '43', 'ChepeMoralesgmail.com', '68742510', 'Samsung', 'Tigo', '99.99', 'moroso'),
('Renato', 'Gomez', 'M', '38', 'RenaGo38@gmail.com', '35874152', 'Xiaomi', 'Claro', '50.15', 'inactivo');

SELECT p.Nombre_propietario, p.Apellido_propietario
FROM propietario p

SELECT SUM(p.Saldo_propietario) AS total
FROM propietario p
WHERE Sexo_propietario = 'F';

SELECT p.Nombre_propietario, p.Telefono_propietario
FROM propietario p
WHERE p.Marca_propietario IN ('LG', 'Xiaomi', 'Huawei');

SELECT COUNT(p.Id_propietario) AS total
FROM propietario p
WHERE p.Estado_propietario = 'inactivo' OR
p.Saldo_propietario = '00.00';

SELECT p.Nombre_propietario, p.Apellido_propietario, p.Edad_propietario, p.Marca_propietario
FROM propietario p
WHERE p.Edad_propietario > 40;

SELECT p.Telefono_propietario
FROM propietario p
WHERE p.Saldo_propietario <= 300;

SELECT SUM(p.Saldo_propietario) AS total
FROM propietario p
WHERE p.Empresa_propietario = 'Tigo';

SELECT COUNT(p.Id_propietario) AS total
FROM propietario p
WHERE p.Empresa_propietario = 'Telefonica';

SELECT p.Edad_propietario, COUNT(p.Edad_propietario) AS total
FROM propietario p
GROUP BY p.Edad_propietario; 

SELECT p.Nombre_propietario, p.Apellido_propietario 
FROM propietario p
WHERE p.Sexo_propietario = 'M';

SELECT p.Email_propietario 
FROM propietario p
WHERE p.Email_propietario LIKE '%gmail.com';

SELECT p.Nombre_propietario, p.Telefono_propietario
FROM propietario p
WHERE p.Marca_propietario IN ('Samsung', 'Motorola', 'Apple');

SELECT p.Telefono_propietario
FROM propietario p
WHERE p.Empresa_propietario = 'Claro';

SELECT p.Marca_propietario, p.Telefono_propietario
FROM propietario p
WHERE p.Empresa_propietario != 'Telefonica';

SELECT p.Apellido_propietario, p.Telefono_propietario
FROM propietario p
WHERE p.Empresa_propietario = 'CLARO' OR
p.Empresa_propietario = 'Tigo';

SELECT p.Marca_propietario
FROM propietario p
ORDER BY p.Marca_propietario DESC;

SELECT p.Empresa_propietario
FROM propietario p
ORDER BY p.Empresa_propietario ASC;

SELECT AVG(p.Saldo_propietario) as promedio
FROM propietario p
WHERE p.Empresa_propietario = 'Claro';

SELECT p.Telefono_propietario
FROM propietario p
WHERE p.Saldo_propietario = 00.00;

SELECT p.Marca_propietario,  COUNT(p.Id_propietario) AS Total
FROM propietario p
group BY p.Marca_propietario;

SELECT p.Empresa_propietario,  SUM(p.Saldo_propietario) AS total
FROM propietario p
group BY p.Empresa_propietario;

