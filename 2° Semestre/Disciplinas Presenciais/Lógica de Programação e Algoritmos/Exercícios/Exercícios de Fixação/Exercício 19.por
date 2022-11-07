programa {
	funcao inicio() {
	real a1,a2,a3
	escreva("Digite o ângulo 1: ")
	leia(a1)
	escreva("Digite o ângulo 2: ")
	leia(a2)
	escreva("Digite o ângulo 3: ")
	leia(a3)
	se ((a1 + a2 + a3) != 180)
	{
	    escreva("Não é um triângulo válido")
	}
	senao se (a1 == 90 ou a2 == 90 ou a3 == 90)
	{
	    escreva("Esse é um Triângulo Retângulo.")
	}
	senao se (a1 > 90 ou a2 > 90 ou a3 > 90)
	{
	    escreva("Esse é um Obtusângulo.")
	}
	senao
	{
	    escreva("Esse é um Acutângulo.")
	}
}

}