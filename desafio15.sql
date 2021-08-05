DELIMITER $ $ CREATE PROCEDURE buscar_media_por_cargo (IN cargo VARCHAR(80)) BEGIN
SELECT
  ROUND(AVG(e.SALARY), 2) AS 'Média salarial'
FROM
  hr.employees AS e
  INNER JOIN hr.jobs AS j ON j.JOB_ID = JOB_ID
WHERE
  j.JOB_TITLE = cargo
END $ $ DELIMITER;
