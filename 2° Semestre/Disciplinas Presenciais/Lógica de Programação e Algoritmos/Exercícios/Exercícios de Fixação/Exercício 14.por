programa {
    inclua biblioteca Matematica
	funcao inicio() {
		real a,b,c
		real delta
		real raiz1
		real raiz2
		delta = 0
		escreva("Informe o valor de a: ")
		leia(a)
		escreva("Informe o valor de b: ")
		leia(b)
		escreva("Informe o valor de c: ")
		leia(c)
		
		delta = (b ^ 2) - (4 * a * c)
		se (delta > 0)
		{
		raiz1 = (-b + Matematica.raiz(2,delta)) / 2 * a
		raiz2 = (-b - Matematica.raiz(2,delta)) / 2 * a
		}
		senao
		{
		escreva("Essa fun��o n�o possui ra�zes reais")
		}
		se (raiz1 == raiz2)
		{
		escreva("A raiz dessa fun��o �: ")
		}
		senao
		{
		escreva("As ra�zes dessa fun��o s�o: ",raiz1," e ",raiz2)
		}	
	}
}