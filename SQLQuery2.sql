USE practice_one;
GO

SELECT * FROM tbl_clients; 
GO

SELECT * FROM tbl_status;
GO

SELECT c.name, c.nit, s.nombre_status
FROM tbl_clients AS c
INNER JOIN tbl_status AS s
on c.id_status = s.id_status
WHERE nombre_status = 'Activo';
GO

SELECT name
FROM tbl_clients
WHERE id_status IS NOT NULL
UNION -- UNION ALL - INTERSECT EQUAL TO INNER JOIN AND EXCEPT LEFT JOIN
SELECT nombre_status
FROM tbl_status	
WHERE nombre_status LIKE '%ct_';
GO

SELECT name, COUNT(nit) AS total_nit
FROM tbl_clients
GROUP BY name
HAVING COUNT(nit) >2 
ORDER BY name ASC; 
GO
-- PROCEDURES
/*
CREATE PROCEDURE sp_ActualizarClients
	@name VARCHAR(50),
	@nit VARCHAR(50)
AS 
BEGIN
	UPDATE tbl_clients
	SET name = @name
	WHERE nit = @nit
END;
GO

EXEC sp_ActualizarClients @name = Maricarmen, @nit = 3;
*/

-- Funciones

CREATE FUNCTION fn_TotalNit (@nit VARCHAR(50))
RETURNS VARCHAR(50)
AS
BEGIN
	return @nit;
END;
Go

SELECT name, dbo.fn_TotalNit(nit) AS nits FROM tbl_clients;
