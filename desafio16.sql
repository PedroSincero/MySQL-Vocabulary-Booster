DELIMITER $ $ CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario (param_email VARCHAR(50)) RETURNS INT READS SQL DATA BEGIN DECLARE result INT;
SELECT
  COUNT(jh.JOB_ID)
FROM
  hr.job_history AS jh
  INNER JOIN hr.employees AS e ON e.EMAIL = param_email
WHERE
  e.EMPLOYEE_ID = jh.EMPLOYEE_ID INTO result;
RETURN result;
END $ $ DELIMITER;
-- Agradecimentos a Denis Rossati Turma 10, Tribo B, por ter me auxiliado na elaboração deste requisito e de mais outros
