'''2-) Desenvolver um programa para encontrar o delta de uma equação do 2º grau. A fórmula geral de equações
do 2º grau é a seguinte: Ax2 +Bx + C = 0 e a do Delta é: B2 -4AC. O usuário deverá digitar os coeficientes A, B
e C respectivamente e lhe será apresentado o valor do delta.'''

def delta(a,b,c):
  delta = (b ** 2) - (4 * a * c)
  return delta

print("Descubra o Delta da Equação")
a = int(input("Digite o valor de a: "))
b = int(input("Digite o valor de b: "))
c = int(input("Digite o valor de c: "))

delta = delta (a,b,c)
print(f"O valor de do Delta é: {delta}")
