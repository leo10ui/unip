'''6) Faça uma função chamada Calculadora() que receba dois números e um operador como parâmetros. Com
base nos itens informados, realize o cálculo e retorne o resultado esperado.'''

def Calculadora(n1,n2,op):
  if op == "+":
    resultado = n1 + n2
  elif op == "-":
    resultado = n1 - n2
  elif op == "*":
    resultado = n1 * n2
  elif op == "/":
    resultado = n1 /n2
  else:
    resultado = "Digite um operador válido"
  return resultado

print(Calculadora(10,2,"/"))