#Nome: Leonardo de Souza Rodrigues
#RA: F344HB-2

print("🎲🎲Bem Vindo ao Jogo do NIM🎲🎲")
n = int(input("Digite a quantidade total de peças: "))
m = int(input("Digite o número máximo de peças que poderão ser retiradas: "))
i = 1

#PC JOGA
if n % (m+1) != 0:
    print("Eu vou começar!😎")
    if n <= m:
        retira = n
        n -= retira
    else:
        if n % (m+1) == 0:
            retira = n // (m+1)
            n -= retira
        else:
            retira = n % (m+1)
            n -= retira
    print(f"Retirei {retira} peças.")
    print(f"Sobraram {n} peças no jogo.")
#########

#Humano Joga
else:
    print("Vou ser legal e deixar você começar.😁")
while n > 0:
    retira = int(input(f"Quantas peças você quer retirar?(máx:{m}): "))
    while retira > m or retira == 0:
      print("Quantidade não permitida. Tente novamente")
      retira = int(input(f"Quantas peças você quer retirar?(min:1 e máx:{m}): "))
    n -= retira
    print(f"Peças restantes: {n}")
    i += 1
    if n <= 0 :
      print(f"Você ganhou, trapaceiro")
    else :
      print(f"\n--------------------------Rodada {i}---------------------------------\n")
##########


#PC JOGA DNV
    if n <= m:
        retira = n
        n -= retira
    else:
        if n % (m+1) == 0:
            retira = n // (m+1)
            n -= retira
        else:
            retira = n % (m+1)
            n -= retira
    print("Retirei: ",retira," peças.")
    print(f"Sobraram: {n} peças.")
    if n <= 0 :
      print(f"\nEu ganhei de você, os computadores ainda irão dominar o mundo!!!!")
      print("01010110 01101111 01100011 11101010 00100000 01110011 01100101 00100000 01100110 01100101 01110010 01110010 01101111 01110101 00100001")
    else :
      print("\nSua vez: ")
############
