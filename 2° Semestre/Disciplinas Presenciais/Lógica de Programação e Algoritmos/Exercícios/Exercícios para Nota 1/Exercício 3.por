programa {
	funcao inicio() {
		real n1,n2,media,freq
		real aulas,faltas
		escreva("Digite a nota 1: ")
		leia(n1)
		escreva("Digite a nota 2: ")
		leia(n2)
		escreva("Digite o total de aulas: ")
		leia(aulas)
		escreva("Digite a quantidade de faltas: ")
		leia(faltas)
		media = (n1+n2) / 2
		freq = ((aulas-faltas)/aulas)*100
		se (media >= 6 e freq >= 75)
		{
		    escreva("Você está aprovado com média ",media," e frequência de ",freq,"%")
		}
		senao se (media >= 3 e media < 6)
		{
		    escreva("Você está de exame, sua média foi ",media," e sua frequência foi de ",freq,"%")
		}
		senao
		{
		    escreva("Sua média foi de ",media," e sua frequência de ",freq,"%. Infelizmente você foi reprovado.")
		}
	}
}
