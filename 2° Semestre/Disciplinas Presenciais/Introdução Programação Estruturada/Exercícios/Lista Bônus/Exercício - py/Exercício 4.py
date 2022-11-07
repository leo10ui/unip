'''4) Faça um programa responsável por ler 10 valores informados pelo usuário. Ao final mostre quantos valores
foram maiores ou iguais a cinco e quantos foram menores do que cinco.'''


valores = []
menor = 0
maior = 0
for i in range(1,11):
  valor = int(input("Digite um valor: "))
  if valor < 5:
    menor = menor + 1
  else:
    maior = maior + 1
  valores.append(valor)

print(f"\nOs valores digitados foram: {valores}")
print(f"{menor} valores foram menores que 5.")
print(f"{maior} valores foram maiores que 5.")