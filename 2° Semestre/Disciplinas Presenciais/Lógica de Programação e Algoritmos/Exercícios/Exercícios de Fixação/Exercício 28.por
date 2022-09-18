// 28 - Faça um algoritmo para mostrar o valor de a^b usando repetição.

programa {
	funcao inicio() {
		inteiro res = 1,a,b,i = 1
		escreva("\nBase= ")
		leia(a)
		escreva("Expoente= ")
		leia(b)
		enquanto (i <= b){
		    res = res * a
		    i = i + 1
		}
		escreva("\nResultado= ",res)
	}
}
