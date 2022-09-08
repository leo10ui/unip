programa {
	funcao inicio() {
		inteiro cod
		cadeia setor
		cadeia msgE = "Digite o código do produto: "
		cadeia msgS = "O produto digitado está no setor de "
		escreva(msgE)
		leia(cod)
		se (cod >= 1 e cod <= 100)
		{
		    setor = "alimentos"
		    escreva(msgS,setor)
		}
		senao se (cod >= 101 e cod <= 200)
		{
		    setor = "limpeza"
		    escreva(msgS,setor)
		}
		senao se (cod >= 201 e cod <= 400)
		{
		    setor = "ferramentas"
		    escreva(msgS,setor)
		}
		senao
		{
		    setor = "vestuário"
		    escreva(msgS,setor)
		}
	}
}
