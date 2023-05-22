--Nome: Leonardo de Souza Rodrigues
--RA: F344HB-2
--Banco de Dados - Lista de Exercícios 5

--Exercícios sobre Funções String: 
/*1. Exiba o nome dos contatos em letras maiúsculas e de suas empresas em letras
minúsculas.*/
SELECT UPPER(ContactName) AS ContactName,LOWER(CompanyName) AS CompanyName
FROM Customers

/*2. Exiba a cidade dos contatos, bem como sua quantidade de caracteres, sem repeti-los.*/
SELECT DISTINCT City,LEN(City) AS CharQty
FROM Customers

/*3. Apresente o nome dos contatos, substituindo os espaços existentes entre nome e
sobrenome por dois traços ('--').*/
SELECT REPLACE(ContactName,' ','--') AS ContactName
FROM Customers

/*4. Exiba as três primeiras letras dos nomes dos contatos e as três últimas letras dos nomes de
suas empresas.*/
SELECT SUBSTRING(ContactName,1,3) AS ContactNameSubs,SUBSTRING(CompanyName,LEN(CompanyName)-2,LEN(CompanyName)) AS CompanyNameSubs
FROM Customers

/*5. Mostre a raiz quadrada do número de caracteres do endereço.*/
SELECT SQRT(LEN(Address)) AS SquareRoot
FROM Customers

/*6. Exiba as cidades dos contatos a partir da terceira posição, com cinco posições, sem repetilas.*/
SELECT DISTINCT City
FROM Customers
ORDER BY City OFFSET 3 ROWS FETCH NEXT 5 ROWS ONLY

/*7. Exiba os nomes dos contatos, retirando os espaços existentes entre nome e sobrenome.*/
SELECT REPLACE(ContactName,' ','') AS ContactName
FROM Customers

/*8. Exiba o caractere padrão ASCII que corresponde ao idCustomer dos clientes de London
e de Buenos Aires.*/
SELECT ASCII(CustomerID) AS CustomerID_ASCII
FROM Customers
WHERE City = 'London'
OR City = 'Buenos Aires'

/*9. Exiba apenas os quatro primeiros caracteres das cidades dos contatos.*/
SELECT SUBSTRING(City,1,4) AS CitySubs
FROM Customers

/*10. Exiba apenas os seis últimos caracteres das cidades dos contatos.*/
SELECT SUBSTRING(City,LEN(City)-5,LEN(City))
FROM Customers


select * from Employees
--Exercícios sobre Funções de Agregação:
/*1. Exiba o maior e o menor salário dos empregados da região WA.*/
SELECT MIN(Salary) AS 'Minor Salary', MAX(Salary) AS 'Biggest Salary'
FROM Employees
WHERE Region = 'WA'

/*2. Mostre a soma dos salários dos empregados que tem sobrenome iniciado pela letra D.*/
SELECT SUM(Salary) AS 'Total'
FROM Employees
WHERE LEFT(FirstName,1) = 'D' 

/*3. Exiba a média dos salários dos empregados que tem cargo (Title) 'Sales Representative'.*/
SELECT AVG(Salary) AS 'Average of Salary'
FROM Employees
WHERE Title = 'Sales Representative'

/*4. Apresente a quantidade de empregados que não são da região de WA.*/
SELECT COUNT(DISTINCT EmployeeID) AS 'Emp_Not_WA'
FROM Employees
WHERE EmployeeID NOT IN(
    SELECT EmployeeID
    FROM Employees
    WHERE Region = 'WA'
    )

/*5. Exiba a maior data de contratação (Hiredate) dos empregados.*/
SELECT HireDate
FROM Employees
WHERE HireDate >= ALL(
    SELECT HireDate
    FROM Employees
    )

/*6. Exiba a menor data de nascimento dos empregados (Birthdate), denominando-a 'Mais
Antigo'.*/
SELECT TOP 1 BirthDate AS 'Mais Antigo'
FROM Employees
ORDER BY BirthDate ASC

SELECT BirthDate AS 'Mais Antigo'
FROM Employees
WHERE BirthDate <= ALL(
    SELECT BirthDate
    FROM Employees
)

/*7. Mostre a quantidade de empregados da cidade de Seattle, denominando-a
'Quantidade_de_Seattle'.*/
SELECT COUNT(*) AS 'Quantidade_de_Seattle'
FROM Employees
WHERE City = 'Seattle'

/*8. Exiba a média dos salários dos empregados da cidade de Redmond e também tal valor
acrescido e diminuído de 20%.*/
SELECT AVG(Salary) AS 'Average',AVG(Salary)*1.2 AS 'Raised 20%', AVG(Salary)*0.8 AS 'Decreased 20%'
FROM Employees
WHERE City = 'Redmond'

/*9. Exiba a soma dos salários dos funcionários cujos nomes começam com 'An'.*/
SELECT SUM(Salary) AS 'Sum'
FROM Employees
WHERE LEFT(FirstName,2) = 'An'

/*10. Exiba a quantidade de funcionários que apresentam 'er' no nome.*/
SELECT COUNT(*) AS 'Count'
FROM Employees
WHERE FirstName LIKE '%er%'
OR LastName LIKE '%er%'

/*11. Mostre o menor e o maior salários dos funcionários que moram em algum endereço que
contenha "Ave".*/
SELECT MIN(Salary) AS 'Min', MAX(Salary) AS 'Max'
FROM Employees
WHERE Address LIKE '%Ave%'


--Exercícios sobre Agrupamento de Dados: 
/*1. Exiba o cargo e a quantidade de empregados por cargo em ordem crescente de
quantidade.*/
SELECT Title,COUNT(*) AS Qty
FROM Employees
GROUP BY Title

/*2. Exiba o cargo e a quantidade de empregados por cargo, eliminando os cargos nulos.*/
SELECT Title,COUNT(FirstName) AS 'Count'
FROM Employees
WHERE Title IS NOT NULL
GROUP BY Title

/*3. Apresente o cargo e a média dos salários (denominando de Media_Salarios_Cargo) dos
empregados por cargo.*/
SELECT Title,AVG(Salary) AS 'Media_Salarios_Cargo'
FROM Employees
GROUP BY Title

/*4. Exiba o cargo e a soma dos salários dos funcionários por cargo cujo códigos postais seja
maiores que 50000.*/
SELECT Title, SUM(Salary) AS 'Sum'
FROM Employees
WHERE PostalCode > 50000
GROUP BY Title

/*5. Apresente o cargo e a soma dos salários dos empregados por cargo da região de WA.*/
SELECT Title,SUM(Salary) AS 'Sum'
FROM Employees
WHERE Region = 'WA'
GROUP BY Title

/*6. Altere para -1 o campo ReportsTo dos empregados das cidades de Redmond e Buenos
Aires.*/
UPDATE Employees
SET ReportsTo = -1
WHERE City = 'Redmond'
OR City = 'Buenos Aires'

/*7. Exiba o campo ReportsTo e a quantidade de empregados por cidade onde ReportsTo não
seja -1.*/
SELECT City,COUNT(FirstName) FROM Employees
WHERE ReportsTo = -1
GROUP BY City

/*8. Apresente a cidade e a soma dos salários dos empregados por cidade.*/
SELECT City,SUM(Salary) AS 'Sum'
FROM Employees
GROUP BY City

/*9. Exiba a cidade e a média dos salários dos empregados por cidade.*/
SELECT City,AVG(Salary) AS 'Average'
FROM Employees
GROUP BY City

/*10. Exiba a cidade, o cargo, a soma e a média dos salários dos empregados por cidade e
cargo.*/
SELECT City,Title,SUM(Salary) AS 'Sum',AVG(Salary) AS 'Average'
FROM Employees
GROUP BY City,Title