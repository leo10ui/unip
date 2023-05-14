--Nome: Leonardo de Souza Rodrigues
--RA: F344HB-2

/*1) Mostrar todos os dados das disciplinas cuja carga horária esteja entre 80 e 100;*/
SELECT *
FROM DISCIPLINA
WHERE carga BETWEEN 80 AND 100

/*2) Mostrar nome e mensalidade dos alunos do curso de ADS que tenham mensalidade superior a 1000;*/
SELECT nome,mensalidade
FROM ALUNO
WHERE curso='ADS'
AND mensalidade > 1000

/*3) Mostrar os dados dos alunos cuja mensalidade seja inferior a 950 ou superior a 1000;*/
SELECT * FROM ALUNO
WHERE mensalidade < 950
OR mensalidade > 1000

/*4) Mostrar os dados dos alunos cujo nome comece com a letra R (ou r);*/
SELECT *
FROM ALUNO
WHERE nome LIKE 'R%'

/*5) Mostrar os dados dos alunos cujos nomes comecem com R ou com M;*/
SELECT *
FROM ALUNO
WHERE nome LIKE 'R%'
OR nome LIKE 'M%'

/*6) Mostrar o nome, o curso e o valor da mensalidade de todos os alunos que cursaram a
disciplina "banco de dados";*/
SELECT A.nome,A.curso,A.mensalidade
FROM ALUNO AS A,DISCIPLINA AS D,MATRICULA AS M
WHERE A.ra = M.ra AND D.cod = M.cod
AND D.nome='banco de dados'

/*7) Mostrar todos os dados dos alunos que foram reprovados por nota (média das notas < 6).
Mostrar também o nome da disciplina em que foram reprovados;*/
SELECT A.*,D.nome, ((M.nota1+M.nota2)/2) AS media
FROM ALUNO AS A,MATRICULA AS M,DISCIPLINA AS D
WHERE A.ra = M.ra AND D.cod = M.cod
AND ((M.nota1+M.nota2)/2) < 6

/*8) Mostrar em que disciplinas os alunos do curso "redes" foram matriculados no ano de 2021
(nome do aluno, curso, nome da disciplina, ano, semestre);*/
SELECT A.nome,A.curso,D.nome,M.ano,M.semestre
FROM ALUNO AS A,MATRICULA AS M, DISCIPLINA AS D
WHERE A.ra=M.ra AND D.cod=M.cod
AND A.curso='redes'
AND M.ano = 2021

/*9) Mostrar o nome e o ra dos alunos matriculados em disciplinas de "humanas";*/
SELECT A.nome,A.ra
FROM ALUNO AS A,MATRICULA AS M,DISCIPLINA AS D
WHERE A.ra=M.ra AND D.cod=M.cod
AND D.area='humanas'

/*10) Mostrar o nome, o ra, o nome da disciplina, a carga horária da disciplina e a quantidade de
faltas de todos os alunos reprovados por falta (número de faltas > 25% da carga horária);*/
SELECT A.nome,A.ra,D.nome,D.carga,M.faltas
FROM ALUNO AS A,MATRICULA AS M,DISCIPLINA AS D
WHERE A.ra=M.ra AND D.cod=M.cod
AND M.faltas > (D.carga*0.25)

/*11) Mostrar os dados dos alunos que possuem a maior média (em qualquer disciplina) entre
todos;*/
SELECT *
FROM ALUNO AS A,MATRICULA AS M
WHERE A.ra=M.ra
AND (M.nota1+M.nota2)/2 >= ALL(SELECT (nota1+nota2)/2 FROM MATRICULA)

/*12) Mostrar os dados dos alunos que possuem o menor número de faltas (em qualquer
disciplina) entre todos;*/
SELECT *
FROM ALUNO AS A,MATRICULA AS M
WHERE A.ra=M.ra
AND M.faltas <= ALL(SELECT faltas FROM MATRICULA)

/*13) Mostrar a média geral de todos os alunos que foram aprovados por nota (média >= 6);*/
SELECT ROUND(AVG((nota1+nota2)/2),2) AS 'Média Geral'
FROM ALUNO AS A,MATRICULA AS M
WHERE (nota1+nota2)/2 >= 6

/*14) Mostrar a quantidade de alunos reprovados (média < 6 ou faltas > 25% da carga).*/
SELECT COUNT(DISTINCT A.ra) AS 'Alunos Reprovados'
FROM ALUNO AS A, MATRICULA AS M,DISCIPLINA AS D
WHERE A.ra = M.ra AND D.cod = M.cod
AND (nota1+nota2)/2 < 6
OR M.faltas > (D.carga*0.25)

/*15) Mostrar a soma das mensalidades de todos os alunos do curso “redes” matriculados em
2021;*/
SELECT ROUND(SUM(DISTINCT A.mensalidade),2) AS 'Tot_Mens'
FROM ALUNO AS A,MATRICULA AS M
WHERE A.ra = M.ra
AND A.curso = 'redes'
AND M.ano = 2021

/*16) Mostrar quantos alunos foram matriculados em cada curso oferecido pela escola;*/
SELECT curso, COUNT(DISTINCT ra) AS QNT_Alunos
FROM ALUNO
GROUP BY curso

/*17) Mostrar a média de faltas dos alunos por curso oferecido pela escola;*/
SELECT A.curso, AVG(M.faltas) AS 'Média_Faltas'
FROM ALUNO AS A,MATRICULA AS M
WHERE A.ra = M.ra
GROUP BY curso

/*18) Mostrar a quantidade de faltas de todos os alunos matriculados em 2021, considerando o
total por alunos em todas as disciplinas;*/
SELECT D.nome,SUM(faltas) AS 'QNT_Faltas'
FROM MATRICULA as M, DISCIPLINA AS D
WHERE M.cod = D.cod
AND ano = 2021
GROUP BY D.nome

/*19) Mostrar o total de faltas dos alunos matriculados em 2021 no curso de redes;*/
SELECT SUM(M.faltas) AS 'Tot_Faltas'
FROM ALUNO AS A,MATRICULA AS M
WHERE A.ra = M.ra
AND curso = 'redes'
AND ano = 2021

/*20) Criar uma visão para trazer a média geral por curso de todos os alunos matriculados. Usar
essa visão para mostrar a média geral de todos os cursos;*/
GO
CREATE VIEW
media_geral AS (SELECT curso,AVG((nota1+nota2)/2) AS 'media'
FROM ALUNO AS A, MATRICULA AS M
WHERE A.ra = M.ra
GROUP BY curso);
GO

/*21) Mostrar os dados dos alunos que foram reprovados por faltas, mas não por nota, do curso
de redes;*/
SELECT A.*,(M.nota1+M.nota2)/2 AS media,M.faltas
FROM ALUNO AS A,MATRICULA AS M,DISCIPLINA AS D
WHERE A.ra = M.ra AND D.cod = M.cod
AND M.faltas > (D.carga*0.25)
AND (nota1+nota2)/2 >= 6
AND A.curso = 'redes'

/*22) Mostrar todos os alunos matriculados em quaisquer disciplinas, separados pelo ano da
matrícula;*/
SELECT A.nome,D.nome,M.ano
FROM ALUNO AS A,MATRICULA AS M,DISCIPLINA AS D
WHERE A.ra = M.ra AND D.cod = M.cod
AND A.ra IN(
    SELECT DISTINCT A.ra
    FROM ALUNO AS A,MATRICULA AS M
    WHERE A.ra = M.ra
)

/*23) Mostrar todos os dados de alunos que tenham somente aprovações (nota e falta);*/
SELECT DISTINCT A.*
FROM ALUNO AS A, MATRICULA AS M, DISCIPLINA AS D
WHERE A.ra = M.ra AND D.cod = M.cod
AND (M.nota1+M.nota2)/2 >= 6
AND M.faltas < D.carga*0.25

/*24) Mostrar os alunos de redes que não tenham qualquer matrícula;*/
SELECT DISTINCT nome
FROM ALUNO
WHERE curso = 'redes'
AND ra NOT IN (
    SELECT DISTINCT nome
    FROM ALUNO AS A, MATRICULA AS M
    WHERE A.ra = M.ra
    )

/*25) Mostrar os dados das disciplinas que não tiveram qualquer matrícula registrada (ninguém se
matriculou).*/
SELECT DISTINCT nome
FROM DISCIPLINA
WHERE cod NOT IN(
    SELECT D.cod
    FROM DISCIPLINA AS D, MATRICULA AS M
    WHERE D.cod = M.cod
)
