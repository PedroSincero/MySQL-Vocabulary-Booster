SELECT
  UCASE(CONCAT(FIRST_NAME, ' ', LAST_NAME)) AS 'Nome completo',
  J.START_DATE AS 'Data de início',
  SALARY AS 'Salário'
FROM hr.employees AS E
INNER JOIN job_history AS J
  ON E.EMPLOYEE_ID = J.EMPLOYEE_ID
WHERE MONTH(J.START_DATE) IN (1, 2, 3)
ORDER BY `Nome completo`, `Data de início`;
