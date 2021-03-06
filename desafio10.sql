SELECT
  P.ProductName AS 'Produto',
  MIN(Quantity) AS 'Mínima',
  MAX(Quantity) AS 'Máxima',
  ROUND(AVG(Quantity), 2) AS 'Média'
FROM w3schools.order_details
INNER JOIN w3schools.products AS P
  ON P.ProductID = order_details.ProductID
GROUP BY Produto
HAVING `Média` > 20
ORDER BY `Média`, `Produto`;
