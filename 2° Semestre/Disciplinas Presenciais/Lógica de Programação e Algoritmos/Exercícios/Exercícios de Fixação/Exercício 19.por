programa {
	funcao inicio() {
	real a1,a2,a3
	escreva("Digite o �ngulo 1: ")
	leia(a1)
	escreva("Digite o �ngulo 2: ")
	leia(a2)
	escreva("Digite o �ngulo 3: ")
	leia(a3)
	se ((a1 + a2 + a3) != 180)
	{
	    escreva("N�o � um tri�ngulo v�lido")
	}
	senao se (a1 == 90 ou a2 == 90 ou a3 == 90)
	{
	    escreva("Esse � um Tri�ngulo Ret�ngulo.")
	}
	senao se (a1 > 90 ou a2 > 90 ou a3 > 90)
	{
	    escreva("Esse � um Obtus�ngulo.")
	}
	senao
	{
	    escreva("Esse � um Acut�ngulo.")
	}
}

}