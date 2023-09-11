/* Nome: Leonardo de Souza Rodrigues
/* RA: F344HB-2
/* Lista de Exercícios 2 - Linguagem de Programação de Banco de Dados*/

/*1) Crie uma tabela temporária local chamada #Produtos. Essa tabela deverá conter os campos:
idProd INT PRIMARY KEY, descProd VARCHAR (50) e valProd MONEY.*/
CREATE TABLE #Produtos(
    idProd INT PRIMARY KEY,
    descProd VARCHAR(50),
    valProd MONEY
)

/*2) Use um loop do tipo WHILE para popular a tabela criada anteriormente com 1000 registros.
Na descrição do Produto informe: ‘Produto 1’, ‘Produto 2’, ‘Produto 3’...’Produto 1000’. Já no
valor do Produto gere valores aleatórios entre 100 e 10.000.*/
DECLARE @i INT = 1;
WHILE(@i <= 1000) BEGIN
    INSERT INTO #Produtos(idProd,descProd,valProd)
    VALUES (@i,'Produto ' + CAST(@i AS VARCHAR),ROUND(RAND()*(10000-100),2));
    SET @i += 1;
END;

/*3) Escreva uma declaração que tente inserir um registro duplicado na tabela. Use a função
@@ERROR para apresentar uma mensagem de erro para o usuário.*/
DECLARE @num_erro INT;
INSERT INTO #Produtos(idProd,descProd,valProd)
VALUES(1,'Produto 1',2172.17);
SET @num_erro = @@ERROR;
IF(@num_erro > 0) BEGIN
    PRINT 'Ocorreu um Erro!'
    PRINT 'Número do Erro: ' + CAST(@num_erro AS VARCHAR);
END;

/*4) Com base no código criado anteriormente, crie uma declaração usando o TRY...CATCH.
Apresente através do uso de suas funções o número do erro, a sua mensagem e a sua
severidade.*/
BEGIN TRY
    INSERT INTO #Produtos(idProd,descProd,valProd)
    VALUES(1,'Produto 1',2172.17);
END TRY
BEGIN CATCH
    PRINT ERROR_NUMBER();
    PRINT ERROR_MESSAGE();
    PRINT ERROR_SEVERITY();
END CATCH

/*5) Ao invés de usar a mensagem padrão exibida anteriormente, crie um código usando a
estrutura anterior para gerar uma mensagem personalizada. Não se esqueça de utilizar
THROW ou RAISERROR.*/
BEGIN TRY
    INSERT INTO #Produtos(idProd,descProd,valProd)
    VALUES(1,'Produto 1',2172.17);
END TRY
BEGIN CATCH
    RAISERROR('Houve um Erro na Execução',16,1)
END CATCH

/*6) Crie uma tabela temporária global chamada ##CopiaProdutos com uma estrutura similar à
de #Produtos. Copie todos os valores da tabela local para a tabela global.*/
CREATE TABLE ##CopiaProdutos(
    idProd INT PRIMARY KEY,
    descProd VARCHAR(50),
    valProd MONEY
)
GO

INSERT INTO ##CopiaProdutos
SELECT * FROM #Produtos;
PRINT 'Registros copiados com sucesso!';
GO

/*7) Exclua a tabela local criada anteriormente #Produtos.*/
DROP TABLE #Produtos

/*8) Feche o SQL Server e abra novamente. A tabela ##CopiaProdutos ainda está disponível
para ser utilizada? Explique!*/

/* R: Não, Porque a única conexão que havia com essa tabela foi fechada. Sendo assim a tabela foi dropada.*/
