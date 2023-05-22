--Nome: Leonardo de Souza Rodrigues
--RA: F344HB-2
--Banco de Dados - Lista de Exercícios 6

/*1. Exiba o nome dos 04 (quatro) primeiros empregados.*/
SELECT TOP 4 * 
FROM Employees

/*2. Exiba todos os dados de 02 (dois) empregados da cidade de London.*/
SELECT *
FROM Employees
WHERE City='London'

/*3. Apresente nome e a data de nascimento do empregado com maior tempo de contratação.*/
SELECT TOP 1 FirstName,LastName,DATEDIFF(YEAR,HireDate,GETDATE()) AS 'Years of Employment'
FROM Employees
ORDER BY HireDate

/*4. Exiba  duas  cidades  quaisquer  (escolha  livremente) e  a  quantidadede  empregados  por cidade.*/
SELECT City,Count(*) AS 'Count of Employees'
FROM Employees
WHERE City = 'London'
OR City = 'Tacoma'
GROUP BY City

/*5. Apresente dois cargos quaisquer e a quantidade de empregados por cidade.*/
SELECT Title,City,Count(*) AS 'Count of Titles'
FROM Employees
WHERE Title='Sales Representative'
OR Title = 'Sales Manager'
GROUP BY Title,City

/*6. Exiba todos os dados de 30% dos empregados.*/
SELECT TOP 3 *
FROM Employees

/*7. Exiba idFuncionario, cargo e país de 70% dos empregados.*/
SELECT TOP 7 EmployeeID,Title,Country
FROM Employees

/*8. Mostre nome, cidade, cargo, data de contratação e salário do empregado de maior salário.*/
SELECT TOP 1 FirstName,City,Title,HireDate
FROM Employees
--O campo salário não existe

/*9. Apresente todos os dados de 01 (um) empregado da cidade de Seatle.*/
SELECT TOP 1 * FROM Employees
WHERE City='Seattle'
ORDER BY City

/*10. Exiba todos os dados de 02 (dois) empregados que tem cargo 'Sales Representative'.*/
SELECT TOP 2 *
FROM Employees
WHERE Title='Sales Representative'