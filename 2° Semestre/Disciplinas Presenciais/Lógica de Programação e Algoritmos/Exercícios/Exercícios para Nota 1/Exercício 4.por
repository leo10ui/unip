programa {
	funcao inicio() {
		inteiro tpCopia = 0,tpPapel = 0,qnt = 0
		real precoCopia,precoTotal
		enquanto (tpCopia < 1 ou tpCopia > 2)
		{
		    escreva("Digite o tipo de c�pia, 1 para norma ou 2 para colorida: ")
	    	leia(tpCopia)
		}
		enquanto (tpPapel < 1 ou tpPapel > 3)
		{
		    escreva("Digite o tipo de papel, 1 para A3, 2 para A4, ou 3 para A5: ")
		    leia(tpPapel)
		}
		escreva("Digite agora a quantidade de c�pias que voc� deseja: ")
		leia(qnt)
		se (tpCopia == 1)
		{
		    se (tpPapel == 1)
		    {
		        precoCopia = 0.40
		        precoTotal = precoCopia * qnt
		        escreva("Voc� selecionou ",qnt," c�pias normais ampliadas.\nCusto por folha: R$",precoCopia,"\nSeu total � de: R$",precoTotal)
		    }
		    senao se (tpPapel == 2)
		    {
		        precoCopia = 0.10
		        precoTotal = precoCopia * qnt
		        escreva("Voc� selecionou ",qnt," c�pias normais simples.\nCusto por folha: R$",precoCopia,"\nSeu total � de: R$",precoTotal)
		    }
		    senao (tpPapel == 3)
		    {
		        precoCopia = 0.40
		        precoTotal = precoCopia * qnt
		        escreva("Voc� selecionou ",qnt," c�pias normais reduzidas.\nCusto por folha: R$",precoCopia,"\nSeu total � de: R$",precoTotal)
		    }
		}
		senao se (tpCopia == 2)
		{
		    se (tpPapel == 2)
		    {
		        precoCopia = 1.00
		        precoTotal = precoCopia * qnt
		        escreva("Voc� selecionou ",qnt," c�pias coloridas.\nCusto por folha: R$",precoCopia,"\nSeu total � de: R$",precoTotal)
		    }
		    senao
		    {
		        precoCopia = 1.50
		        precoTotal = precoCopia * qnt
		        escreva("Voc� selecionou ",qnt," c�pias coloridas ampliadas.\nCusto por folha: R$",precoCopia,"\nSeu total � de: R$",precoTotal)  
		    }
		}
		senao
		{
		    escreva("Escolhas inv�lidas, por favor tente novamente!")
		}
	}
}
