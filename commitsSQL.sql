/*CREATE DATABASE practice_one;
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
*/

USE practive_one;
Go
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
GO

SELECT * FROM tbl_status;
GO

SELECT name, last_name as lastN, COUNT(nit) AS nit
FROM tbl_clients
GROUP BY nit
ORDER BY name DESC; 
GO

SELECT TOP 3 order
FROM users_orders
LEFT JOIN tbl_clientes
On users_orders.id_client = tbl_clientees.id_person
WHERE order NULL;


SELECT TOP 3 name_product, price
from products
order by price DESC;

SELECT category, COUNT(product)
from products
Group by category;

SELECT products, stock
From products
WHERE stock < 5;