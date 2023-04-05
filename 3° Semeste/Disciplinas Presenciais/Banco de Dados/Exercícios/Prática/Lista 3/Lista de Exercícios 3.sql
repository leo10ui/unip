--Banco de Dados - Lista de Exercícios 3
--Aluno: Leonardo de Souza Rodrigues
--RA: F344HB-2

--1) Crie um banco de dados chamado Universidade e coloque-o em uso. 
CREATE DATABASE Universidade;
USE Universidade;

--2) Crie a tabela aluno contendo os seguintes campos:
CREATE TABLE aluno (
    idAluno INT IDENTITY(1,1) PRIMARY KEY,
    nome VARCHAR(30) NOT NULL,
    endereco VARCHAR(50) NOT NULL,
    cidade VARCHAR(20) NOT NULL,
    estado CHAR(2) NOT NULL,
    email VARCHAR(50) NULL,
    ativo BIT NOT NULL,
)

--3) Cadastre os alunos conforme os dados apresentados na tabela abaixo:
INSERT INTO aluno(nome,endereco,cidade,estado,email,ativo) VALUES
    ('Carlos Magno','Av das Graçass, 60','Jundiaí','SP','carlos@mail.com','1'),
    ('Fernando Pety','Rua Julieta, 59','Varzea','SP','fernando@mail.com','1'),
    ('Luiza Joia','Beco Diagonal, 20','Campo Limpo','SP','luiza@mail.com','0'),
    ('Gabriel Marques','Av do Boteco, 50','Cabreuva','SP','gabriel@mail.com','1'),
    ('Rodiney Macena','Rua Roraima, 23','Cabreuva','SP','rodiney@mail.com','1'),
    ('Jonson Silva','Rua XV de Novembro','Itupeva','SP','jonson@mail.com','0'),
    ('Rodrigo Adnet','Av dos Imigrantes, 30','Jundiaí','SP','rodrigo@mail.com','0'),
    ('Marcos Paulo','Rua das Graças, 70','Jundiaí','SP','marcos@mail.com','1'),
    ('José Nóia','Av Madureira, 80','Varzea','SP','josé@mail.com','1'),
    ('Flávio Canto','Rua Raio de Luz, 55','Jarinu','SP','flávio@mail.com','1')

--4) Altere para a cidade de Valinhos os alunos de Cabreúva. 
UPDATE aluno SET
    cidade = 'Valinhos'
    WHERE cidade = 'Cabreuva'

/*5) Acrescente as seguintes colunas na tabela: profissao – varchar (30); e telefone – char
(15).*/
ALTER TABLE aluno ADD
    profissao VARCHAR(30),
    telefone CHAR(15)

/*6) Altere a profissão dos alunos conforme a sua cidade: Jundiaí (Professor); Várzea
(Engenheiro); Campo Limpo (Dentista); Valinhos (Estudante); Itupeva (Aposentado); Jarinu
(Empresário).*/
UPDATE aluno SET profissao = CASE
    WHEN cidade = 'Jundiaí' THEN 'Professor'
    WHEN cidade = 'Varzea' THEN 'Engenheiro'
    WHEN cidade = 'Campo Limpo' THEN 'Dentista'
    WHEN cidade = 'Valinhos' THEN 'Estudante'
    WHEN cidade = 'Itupeva' THEN 'Aposentado'
    WHEN cidade = 'Jarinu' THEN 'Empresário'
END

--7) Exiba o nome e a profissão de todos os alunos em ordem decrescente de profissão. 
SELECT nome,profissao FROM aluno
ORDER BY profissao DESC

--8) Apresente o nome dos alunos que não estão ativos no sistema em ordem decrescente.
SELECT nome FROM aluno
WHERE ativo = 0
ORDER BY nome DESC

--9) Remova todos os registros dos alunos da cidade de Jarinu. 
DELETE FROM aluno
WHERE cidade = 'Jarinu'

--10) Apresente todas as cidades cadastradas na tabela sem repeti-las.
SELECT DISTINCT cidade FROM aluno

--11) Apague o aluno com o Id número 3.
DELETE FROM aluno
WHERE idAluno = 3

--12) Como a coluna telefone não foi usada, apague-a.
ALTER TABLE aluno
DROP COLUMN telefone