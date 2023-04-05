--Banco de Dados - Lista de Exercícios 2
--Aluno: Leonardo de Souza Rodrigues
--RA: F344HB-2

--1) Crie o banco de dados Concessionaria.
CREATE DATABASE Concessionaria

--2) Coloque o banco de dados Concessionária em uso.
USE Concessionaria

/*3) Crie a tabela Veículo contendo: chassi (caractere 17 – chave primária); marca (caractere 10); 
modelo (caractere 20); ano de fabricação (número); ano do modelo (número); e combustível (caractere 1).*/
CREATE TABLE Veiculo (
    chassi VARCHAR (17) PRIMARY KEY,
    marca VARCHAR (10),
    modelo VARCHAR (20),
    ano_fabricacao INT,
    ano_modelo INT,
    combustivel CHAR(1)
)

--4) Acrescente valor (dinheiro) e motor (caractere 20) à tabela Veículo.
ALTER TABLE Veiculo ADD
    valor MONEY,
    motor VARCHAR (20)

--5) Apague a coluna motor da tabela Veículo. 
ALTER TABLE Veiculo
    DROP COLUMN motor

--6) Crie um índice para a tabela Veículo contendo marca e modelo em ordem crescente. 
CREATE INDEX MarcModelo
    ON Veiculo (marca ASC, modelo ASC)

--7) Crie um índice para a tabela Veículo contendo ano de fabricação em ordem decrescente.
CREATE INDEX AnoFab
    ON Veiculo (ano_fabricacao DESC)

--8) Apague o índice que contém as colunas marca e modelo.
DROP INDEX MarcModelo
    ON Veiculo

--9) Apague a tabela Veículo. 
DROP TABLE Veiculo

--10) Apague o banco de dados Concessionária. 
DROP DATABASE Concessionaria