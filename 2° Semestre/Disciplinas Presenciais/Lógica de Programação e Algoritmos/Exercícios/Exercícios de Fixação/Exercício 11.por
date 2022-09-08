programa {
	funcao inicio() {
		real salario,idade,x
		
		escreva("Digite o salário: ")
		leia(salario)
		escreva("Digite a idade: ")
		leia(idade)
		escreva("Digite a porcentagem de aumento / desconto: ")
		leia(x)
		se (idade > 40)
		    salario = salario * (1 + (x / 100))
		senao
		    salario = salario * (1 - (x / 100))
		escreva("O novo salário será de R$",salario)
	}
}
