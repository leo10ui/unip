'''5) Desenvolva uma função que com base em duas listas iniciais de 4 posições cada, monte uma terceira lista,
também com quatro posições, contendo a soma dos seus respectivos elementos.'''

def soma(lista1,lista2):
  lista3 = []
  for i in range(0,4):
    lista3.append(lista1[i] + lista2[i])
  return lista3

lista1 = [1,1,1,1]
lista2 = [2,2,2,2]
lista3 = soma(lista1,lista2)

print(lista3)