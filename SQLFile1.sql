/*
CREATE DATABASE practice_one;
GO

CREATE TABLE tbl_status(
	id_status int IDENTITY(1,1) PRIMARY KEY
);
GO

CREATE TABLE tbl_clients(
	id_person int IDENTITY(1,1) PRIMARY KEY,
	name varchar(100) NOT NULL,
	last_name varchar(100) NOT NULL, 
	nit varchar(100) NOT NULL,
	id_status int, 
	CONSTRAINT fk_status
	FOREIGN KEY (id_status)
	REFERENCES tbl_status(id_status)
);
GO

ALTER TABLE tbl_status
ADD nombre_status varchar(100) NOT NULL; 
GO

INSERT INTO tbl_status(nombre_status) 
VALUES ('Active');
GO

INSERT INTO tbl_clients(name, last_name, nit, id_status)
VALUES ( 'Martin', 'NEAL', '222-222', 1);
GO

UPDATE tbl_status
SET nombre_status = 'Desactivado' WHERE id_status = 1;
GO

INSERT INTO tbl_status(nombre_status)
VALUES ('Desactivado');
GO

INSERT INTO tbl_clients(name, last_name, nit, id_status)
VALUES ('Moly', 'Perez', '111-111', 2);
GO

UPDATE tbl_status 
SET nombre_status = 'Activo'
WHERE id_status = 2;
GO*/

SELECT * FROM tbl_clients;
GO