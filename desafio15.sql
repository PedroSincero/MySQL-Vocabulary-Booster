DELIMITER $ $ CREATE PROCEDURE buscar_media_por_cargo (IN param_cargo VARCHAR(50)) BEGIN
SELECT
  ROUND(AVG(e.SALARY), 2) AS 'Média salarial'
FROM
  hr.employees AS e
  INNER JOIN hr.jobs AS j ON j.JOB_TITLE = param_cargo
WHERE
  j.JOB_ID = E.JOB_ID;
END $ $ DELIMITER;
