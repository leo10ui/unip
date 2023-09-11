/* Nome: Leonardo de Souza Rodrigues
/* RA: F344HB-2
/* Lista de Exercícios 1 - Linguagem de Programação de Banco de Dados*/

/*1) Escreva um script que declare uma variável do tipo integer chamada @myInt. Atribua o valor 10 a
essa variável e imprima o seu conteúdo.*/
DECLARE @myINT INT = 10;
PRINT @myINT;

/*2) Escreva um script que declare uma variável VARCHAR(20) chamada @myString. Atribua o valor
“Isso é um teste” a variável e imprima o seu conteúdo.*/
DECLARE @myString VARCHAR(20);
SET @myString = 'Isso é um teste';
PRINT @myString;

/*3) Escreva um script que declare duas variáveis do tipo integer chamadas @maxID e @minID. Use as
variáveis para imprimir o maior e o menor ID do Aluno (idAluno). Para isso, faça uma consulta a
tabela.*/
DECLARE @maxID INT;
DECLARE @minID INT;
SET @maxID = SELECT MAX(idAluno) FROM Aluno;
SET @minID = SELECT MIN(idAluno) FROM Aluno;
PRINT 'Menor ID: ' + CAST(@minID AS VARCHAR);
PRINT 'Maior ID: ' + CAST(@maxID AS VARCHAR);

/*4) Escreva um script que declare uma variável chamada @id do tipo inteiro com o valor 6. Utilize essa
variável para apresentar os dados de todos os alunos que possuam o ID maior do que o valor dessa
variável.*/
DECLARE @id INT = 6;
SELECT * FROM Aluno
WHERE idAluno > @id;

/*5) Escreva um script que declare três variáveis: endereco VARCHAR(50), cidade VARCHAR(20) e
estado CHAR(2). Use o SELECT para atribuir os valores a esses campos, buscando onde o idAluno
= 1. Mostre os valores dessas variáveis no seguinte formato: “Endereço, Cidade/Estado”.*/
DECLARE @endereco VARCHAR(50),@cidade VARCHAR(20),@estado CHAR(2);
SELECT @endereco=endereco,@cidade=cidade,@estado=estado
FROM Aluno
WHERE idAluno = 1;
PRINT 'Endereço Completo: ' + @endereco + ', ' + @cidade + '/' + @estado;

/*6) Escreva um batch que declare uma variável integer chamada @count para salvar o número total de
registros da tabela Aluno. Usando um bloco IF imprima: “Superior a 100 Alunos” ou “Inferior a 100
Alunos”.*/
DECLARE @count INT;
SET @count = SELECT COUNT(*) FROM Aluno
IF(@count > 100) BEGIN
    PRINT 'Superior a 100 Alunos.';
END;
ELSE BEGIN
    PRINR 'Inferior a 100 Alunis.';
END;

/*7) Crie um batch que contabilize o total de alunos ativos e o total de alunos inativos. Utilize uma estrutura
IF para apresentar qual dos dois grupos apresentam o maior número de Alunos. Ex: “O maior número
é de ativos = X”.*/


/*8) Utilizando IF EXISTS verifique se existe algum registro de aluno da cidade de Jarinu. Caso exista
altere esse registro para a cidade de Valinhos.*/
IF EXISTS (SELECT * FROM Aluno WHERE cidade = 'Jarinu') BEGIN
    UPDATE Aluno
    SET cidade = 'Valinhos' WHERE cidade = 'Jarinu';
END;

/*9) Escreva um script que imprima o abecedário (A à Z). Use a função CHAR para trocar o número por
uma letra. Comece o loop no valor 65.*/
DECLARE @i INT = 65;
WHILE(@i < 91) BEGIN
    PRINT CHAR(@i);
    SET @i += 1;
END;

/*10) Mostre todos os números inteiros múltiplos de 10, de 0 a 1000.*/
DECLARE @i INT = 0;
WHILE(@i <= 1000) BEGIN
    IF(@i % 10 = 0) BEGIN
        PRINT @i;
    END;
    SET @i += 1;
END;

/*11) Escreva um programa que contenha um loop WHILE dentro de outro. O While externo deverá contar
de 1 até 100. Já o interno deverá contar de 1 até 5. Apresente dentro do While interno o produto dos
dois contadores.*/
DECLARE @i INT = 1;
DECLARE @j INT = 1;
WHILE(@i <= 100) BEGIN
    WHILE(@j <= 5) BEGIN
        PRINT (@i * @j);
        SET @j += 1;
    END;
    SET @i += 1;
END;
