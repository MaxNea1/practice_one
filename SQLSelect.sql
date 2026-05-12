SELECT * FROM tbl_clients; 

SELECT * FROM tbl_status;

SELECT c.name, c.nit, s.nombre_status
FROM tbl_clients AS c
INNER JOIN tbl_status AS s
ON c.id_status = s.id_status
WHERE nombre_status = 'Activo';

SELECT c.name, s.nombre_status
FROM tbl_clients AS c
LEFT JOIN tbl_status AS s
ON c.id_status = s.id_status
WHERE nombre_status = 'Desactivado';

/*% more than one character*/
SELECT name
FROM tbl_clients
WHERE id_status IS NOT NULL
UNION
SELECT nombre_status
FROM tbl_status
WHERE nombre_status LIKE '%ct%';

SELECT name
FROM tbl_clients
WHERE name LIKE 'M_';

/* _ single character*/
SELECT name	
FROM tbl_clients
WHERE name NOT LIKE 'Mol_';


SELECT name, COUNT(nit) AS total_nit
FROM tbl_clients
GROUP BY name
ORDER BY total_nit ASC;

SELECT TOP 3 name, COUNT(nit) AS total_nit
FROM tbl_clients
GROUP BY name
HAVING COUNT(nit) > 1
ORDER BY total_nit DESC;