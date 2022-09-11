programa {
	funcao inicio() {
		real valor = 0
		cadeia categoria = ""
		enquanto (valor < 35000){
    		escreva("Digite o valor do veículo (acima de 35000): ")
    		leia(valor)
    		se (valor >= 35000 e valor <= 55000){
    		    categoria = "Carro Popular"
    		}
    		senao se (valor > 55000 e valor <= 100000){
    		    categoria = "Sedã Médio"
    		}
    		senao se (valor > 100000 e valor <= 150000){
    		    categoria = "Sedã de Luxo"
    		}
    		senao{
    		    categoria = "SUV"
    		}
		}
		escreva("O veículo possui valor de R$",valor," e pertence a categoria de ",categoria,".")
	}
}
