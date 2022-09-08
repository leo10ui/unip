programa {
	funcao inicio() {
		inteiro tempo
		real salario
		cadeia msgS = "O novo salário será de: "
		escreva("Quanto anos de empresa: ")
		leia(tempo)
		escreva("Qual é o salário? ")
		leia(salario)
		se (tempo > 10 e salario >= 1000 e salario <= 3000)
		{
		    salario = salario * 1.1
		    escreva(msgS,salario)
		}
		senao se (tempo > 10 e tempo < 16 e salario > 3000 e salario < 6000)
		{
		    salario = salario * 1.12
		    escreva(msgS,salario)
		}
		senao se (salario < 1000)
		{
		    salario = salario * 1.2
		    escreva(msgS,salario)
		}
		senao
		{
		    salario = salario * 1.08
		    escreva(msgS,salario)
		}
	}
}