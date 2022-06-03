CREATE DATABASE AutorLibro;

USE AutorLibro;

CREATE TABLE autor(
	id_Autor INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	nombre_Autor VARCHAR(25) NOT NULL,
	apellido_Autor VARCHAR(25) NOT NULL,
	id_libro_fk INT NOT NULL 
);

CREATE TABLE Libro(
	id_Libro INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	nombre_Libro VARCHAR(25) NOT NULL,
	anio_Libro DATE NOT NULL
);

SELECT * FROM AutorLibro.autor;
SELECT * FROM AutorLibro.libro;

INSERT INTO Libro(nombre_Libro, anio_Libro)
VALUES ('Historia de un Pepe', '1995-01-01')
('El Principito', '1943-01-01'),
('Mansion Pajaro Serpiente', '1942-01-01'),
('Hija_del_Adelantado', '1866-01-01');


INSERT INTO autor(nombre_Autor, apellido_Autor, id_libro_fk)
VALUES ('Jose', 'Milla', 1),
('Antoine', 'Exupery', 2),
('Virgilio', 'Rodriguez', 3);

SELECT 
	p.nombre_Autor,
	p.apellido_Autor,
	q.nombre_Libro
FROM AutorLibro.autor p
INNER JOIN 
AutorLibro.libro q
ON p.id_libro_fk = q.id_Libro;
