'''10) Crie um programa em Python chamado “Gerador de Desculpas”. Ele deverá ler três arquivos, sendo:
desculpa.txt, sujeito.txt e o acao.txt. Com base em um sorteio randômico selecione uma linha de cada
arquivo. No final, gere um arquivo chamado: desculpadoida.txt contendo a desculpa completa.'''

import random as rm

# Abrindo os arquivos
desculpa = open("desculpa.txt","r", encoding="utf-8")
sujeito = open("sujeito.txt","r", encoding="utf-8")
acao = open("acao.txt","r",encoding="utf-8")

# Criando as listas para armazenar as frases
lista_desculpa = []
lista_sujeito = []
lista_acao = []

# Armazenando as frases lidas
for linha in desculpa:
    lista_desculpa.append(linha)

for linha in sujeito:
    lista_sujeito.append(linha)

for linha in acao:
    lista_acao.append(linha)

# Gerando a desculpa perfeita

parte1 = lista_desculpa[rm.randrange(0,len(lista_desculpa)-1)]
parte2 = lista_sujeito[rm.randrange(0,len(lista_sujeito)-1)]
parte3 = lista_acao[rm.randrange(0,len(lista_acao)-1)]

desculpa_perfeita = "{}{}{}".format(parte1.replace("\n"," "),parte2.replace("\n"," "),parte3.replace("\n"," "))
print("Escrevemos a seguinte desculpa hoje: ",desculpa_perfeita)

# Escrevendo a desculpa no arquivo txt
desculpa_do_dia = open("Desculpa do Dia.txt","w", encoding="utf-8")
desculpa_do_dia.write(desculpa_perfeita)