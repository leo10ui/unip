// 27 - Dado 1 número inteiro n, n > 0, calcular seu fatorial.
programa {
	funcao inicio() {
		inteiro fat = 1, i = 2, n
		escreva("\nNúmero")
		leia(n)
		enquanto (i <= n){
		    fat = fat * i
		    i = i + 1
		}
		escreva("\nFatorial = ",fat)
	}
}
