programa {
	funcao inicio() {
		inteiro cod, cod_espec, qnt
		real precoUnd = 0, precoTotal
		cadeia setor,espec = ""
		escreva("Digite o código do produto: ")
		leia(cod)
		se (cod >= 1 e cod <= 100){
		    setor = "Vestuário"
		    escreva("Digite o Tamanho:\n1 - P\n2 - M\n3 - G\n")
		    leia(cod_espec)
		    se (cod_espec == 1){
		       espec = "Tamanho P"
    		   precoUnd = 50
		    }
		    senao se (cod_espec == 2){
		       espec = "Tamanho M"
    		   precoUnd = 70
		    }
		    senao{
		       espec = "Tamanho G"
    		   precoUnd = 85
		    }
		}
		senao se (cod >= 101 e cod <= 200){
		    setor = "Alimentos"
		    escreva("Digite uma opção:\n1 - Enlatados\n2 - Bebidas\n3 - Refeição Pronta\n")
		    leia(cod_espec)
		    se (cod_espec == 1){
		        espec = "Enlatados"
		        precoUnd = 30
		    }
		    senao se (cod_espec == 2){
		        espec = "Bebidas"
		        precoUnd = 40
		    }
		    senao{
		        espec = "Refeições Prontas"
		        precoUnd = 50
		    }
		}
		senao se (cod >= 201 e cod <= 300){
		    setor = "Brinquedos"
		    escreva("Digite o tipo do brinquedo:\n1 - Eletrônicos\n2 - Especiais")
		}
		senao{
		    setor = "Ferramentas"
		    espec = "Feramentas Gerais"
		    precoUnd = 63
		}
        escreva("Digite a quantidade: ")
        leia(qnt)
        precoTotal = qnt * precoUnd
        escreva("O vaor total é de R$",precoTotal," e você está levando ",qnt," ",espec," do setor de ",setor)
	}
}
