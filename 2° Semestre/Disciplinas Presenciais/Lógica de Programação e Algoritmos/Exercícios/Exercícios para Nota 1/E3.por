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
		    escreva("Voc� est� aprovado com m�dia ",media," e frequ�ncia de ",freq,"%")
		}
		senao se (media >= 3 e media < 6)
		{
		    escreva("Voc� est� de exame, sua m�dia foi ",media," e sua frequ�ncia foi de ",freq,"%")
		}
		senao
		{
		    escreva("Sua m�dia foi de ",media," e sua frequ�ncia de ",freq,"%. Infelizmente voc� foi reprovado.")
		}
	}
}
