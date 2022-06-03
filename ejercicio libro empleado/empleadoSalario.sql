CREATE DATABASE EmpleadoPuesto;

USE EmpleadoPuesto;

CREATE TABLE empleado(
	id_empleado INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	nombre_empleado VARCHAR(25) NOT NULL,
	apellido_empleado VARCHAR(25) NOT NULL,
	id_puesto_fk INT NOT NULL 
);

CREATE TABLE puesto(
	id_puesto INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	nombre_puesto VARCHAR(25) NOT NULL,
	salario_puesto DOUBLE NOT NULL
);

SELECT * FROM EmpleadoPuesto.empleado;
SELECT * FROM EmpleadoPuesto.puesto;

INSERT INTO puesto(nombre_puesto, salario_puesto)
VALUES ('Secretaria', '3000.00'),
('Contador', '3000.00'),
('Mensajero', '2500.00'),
('Ingeniero sistemas', '8000.00'),
('Abogado', '7000.00');

INSERT INTO empleado(nombre_empleado, apellido_empleado, id_puesto_fk)
VALUES ('Oscar', 'Mendez', 2),
('Martin', 'Martinez', 3),
('Jose', 'Moreira', 2),
('Karen', 'Garcia', 4),
('Margarito', 'Luna', 5),
('Rosa', 'Grijalva', 1);


SELECT 
	e.nombre_empleado,
	e.apellido_empleado,
	p.nombre_puesto,
	p.salario_puesto
FROM EmpleadoPuesto.empleado e
INNER JOIN 
EmpleadoPuesto.puesto p
ON e.id_puesto_fk = p.id_puesto;
