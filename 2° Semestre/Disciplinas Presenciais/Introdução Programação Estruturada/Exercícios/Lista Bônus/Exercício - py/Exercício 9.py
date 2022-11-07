'''9) Desenvolver um programa, para solicitar uma senha (string) de um usuário e em seguida verificar se a
confirmação da senha é igual a senha digitada anteriormente. Quando a confirmação for igual a primeira
senha digitada, diga que a senha está OK, caso contrário faça com que o usuário informe a senha e a
confirmação da senha novamente. O número máximo de tentativas deve ser igual a 3.'''

i = 1
senha = input("Digite uma senha: ")
c_senha = input("Confirme sua senha: ")

while c_senha != senha:
  i = i + 1
  if i > 3:
    print(f"Muitas tentativas incorretas, cancelando operação.")
    break
  else:
    print("Senha não confere. Tente novamente.")
    input("Confirme sua senha: ")