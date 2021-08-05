DELIMITER $ $ CREATE TRIGGER data_atual BEFORE
INSERT
  ON w3schools.orders FOR EACH ROW BEGIN
SET
  NEW.OrderDate = DATE(NOW());
END $ $ DELIMITER;
-- Agradecimentos a Denis Rossati Turma 10, Tribo B, por ter me auxiliado na elaboração deste requisito e de mais outros
