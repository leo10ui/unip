--Nome: Leonardo de Souza Rodrigues
--RA: F344HB-2
--Banco de Dados - Lista de Exercícios 4

/*1) Exiba o ID, o nome e o preço unitário dos produtos, incluindo uma coluna com preço
majorado de 25%.*/
SELECT ProductID,ProductName,UnitPrice,(UnitPrice*1.25) AS PrecoMaj
FROM Products

/*2) Exiba o ID e o nome do produto, mais o ID do fornecedor e o valor total estocado (preço
unitário * unidades no estoque).*/
SELECT ProductID,ProductName,SupplierID,(UnitPrice*UnitsInStock) AS StockValue
FROM Products

/*3) Apresente o ID e o nome do Produto, além do ID da categoria, para todos os produtos
cujo preço unitário é menor que 10. Repita para preços maiores ou iguais a 10.*/
--Produtos com preço menor que 10:
SELECT ProductID,ProductName,CategoryID
FROM Products
WHERE UnitPrice < 10
--Produtos com preço maior ou igual a 10:
SELECT ProductID,ProductName,CategoryID
FROM Products
WHERE UnitPrice >= 10

/*4) Apresente o ID, o nome do Produto e o preço unitário, além do ID da categoria e o id do
fornecedor, para todos os produtos cujo preço unitário é superior a 75 e a quantidade
em estoque maior do que 2.*/
SELECT ProductID,ProductName,UnitPrice,CategoryID,SupplierID
FROM Products
WHERE UnitPrice > 75
AND UnitsInStock > 2

/*5) Apresente o ID, o nome e preço do Produto, além do ID da categoria, para todos os
produtos descontinuados (Discontinued=1).*/
SELECT ProductID,ProductName,UnitPrice,CategoryID
FROM Products
WHERE Discontinued=1

/*6) Apresente o ID e o nome do Produto, além do ID da categoria e do fornecedor, unidades
em estoque e unidades pedidas (UnitsOnOrder) para todos os produtos cujos pedidos
forem superiores ao dobro das unidades em estoque.*/
SELECT ProductID,ProductName,CategoryID,SupplierID,UnitsInStock,UnitsOnOrder
FROM Products
WHERE UnitsOnOrder > (UnitsInStock*2)

/*7) Exiba o nome dos produtos que não estão disponíveis (isto é, que não possuem
unidades em estoque).*/
SELECT ProductName
FROM Products
WHERE UnitsInStock = 0

/*8) Exiba o nome e o preço dos produtos com preço entre 35 e 50 com unidades disponíveis
em estoque.*/
SELECT ProductName,UnitPrice
FROM Products
WHERE UnitsInStock
BETWEEN 35 AND 50

/*9) Exiba nome dos produtos que começam com 'B'.*/
SELECT ProductName
FROM Products
WHERE ProductName LIKE 'B%'


