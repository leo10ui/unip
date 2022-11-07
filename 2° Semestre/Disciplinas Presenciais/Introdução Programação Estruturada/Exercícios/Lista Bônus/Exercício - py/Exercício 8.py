'''8) Dada a lista = [12, -2, 4, 8, 29, 45, 78, 36, -17, 2, 12, 8, 3, 3, -52] faça um programa que:
1. Imprima o maior elemento;
2. Imprima o menor elemento;
3. Imprima os números pares;
4. Imprima o número de ocorrências do primeiro elemento da lista;
5. Imprima a média dos elementos;
6. Imprima a soma dos elementos de valor negativo.'''

def soma(lista,sinal="a"):
  soma = 0
  for i in range(0,len(lista)):
    if sinal == "a":
      soma = soma + lista[i]
      i + 1
    elif sinal == "-":
      if lista[i] < 0:
        soma = soma + lista[i]
        i + 1
  return soma

def media():
  media = soma(lista) / len(lista)
  return media

def e_par():
  par = 0
  for i in range(0,len(lista)):
    if lista[i] % 2 == 0:
      par = par + 1
    i + 1
  return par


lista = [12, -2, 4, 8, 29, 45, 78, 36, -17, 2, 12, 8, 3, 3, -52]

print(f"1-) O maior elemento é: {max(lista)}")
print(f"2-) O menor elemento é: {min(lista)}")
print(f"3-) Há {e_par()} números pares na lista.")
print(f"4-) O primeiro elemento da lista aparece {lista.count(lista[0])}")
print(f"5-) A média dos elementos é {media()}")
print("6-) A soma dos elementos negativos é",soma(lista,"-"))
