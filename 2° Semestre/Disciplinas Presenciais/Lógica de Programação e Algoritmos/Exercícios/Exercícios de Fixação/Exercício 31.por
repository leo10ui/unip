// 31 - Uma escola possui n alunos, n > 0; cada aluno possui 2 notas. Calcule e mostre a média de cada aluno.
// Considere que m < 3 reprovado; m >= 6 aprovado; e m >= 3 e m < 6 exame. Mostre se cada aluno está aprovado,
// reprovado ou em exame. Ao final mostre quantos alunos foram aprovados, quantos foram reprovados, e quantos
// estão em exame.

programa {
	funcao inicio() {
		inteiro alunos, i=1, reprovados=0, aprovados=0, exame=0
		real n1,n2,m
		escreva("Digite o número de alunos: ")
		leia(alunos)
		enquanto (i <= alunos){
		    escreva("Aluno ",i)
		    escreva("\nDigite a nota 1: ")
		    leia(n1)
		    escreva("Digite a nota 2: ")
		    leia(n2)
		    m = (n1+n2) / 2
		    se (m < 3){
		        escreva("Aluno Reprovado\n")
		        reprovados = reprovados + 1
		    }
		    senao se (m > 3 e m < 6){
		        escreva("Aluno em Exame\n")
		        exame = exame + 1
		    }
		    senao{
		        escreva("Aluno Aprovado\n")
		        aprovados = aprovados + 1
		    }
		    i = i + 1
		}
		escreva("\n###Resultados###")
		escreva("\nAlunos Aprovados: ",aprovados)
		escreva("\nAlunos Rerovados: ",reprovados)
		escreva("\nAlunos em Exame: ",exame)
	}
}
