programa {
	funcao inicio() {
		inteiro cod, cod_espec, qnt
		real precoUnd = 0, precoTotal
		cadeia setor,espec = ""
		escreva("Digite o c�digo do produto: ")
		leia(cod)
		se (cod >= 1 e cod <= 100){
		    setor = "Vestu�rio"
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
		    escreva("Digite uma op��o:\n1 - Enlatados\n2 - Bebidas\n3 - Refei��o Pronta\n")
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
		        espec = "Refei��es Prontas"
		        precoUnd = 50
		    }
		}
		senao se (cod >= 201 e cod <= 300){
		    setor = "Brinquedos"
		    escreva("Digite o tipo do brinquedo:\n1 - Eletr�nicos\n2 - Especiais")
		}
		senao{
		    setor = "Ferramentas"
		    espec = "Feramentas Gerais"
		    precoUnd = 63
		}
        escreva("Digite a quantidade: ")
        leia(qnt)
        precoTotal = qnt * precoUnd
        escreva("O vaor total � de R$",precoTotal," e voc� est� levando ",qnt," ",espec," do setor de ",setor)
	}
}
