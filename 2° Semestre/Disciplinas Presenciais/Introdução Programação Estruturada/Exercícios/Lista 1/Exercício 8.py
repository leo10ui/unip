larg_salao = int(input("Digite a largura do salão em metros: "))
comp_salao = float(input("Digite o comprimento do salão em metros: "))

larg_piso = float(input("Digite a largura do piso em milímetros: "))
comp_piso = float(input("Digite o comprimento do piso em milímetros: "))

total_larg = int((1000 * larg_salao) // larg_piso) + 1
total_comp = int((1000 * comp_salao) // comp_piso) + 1

total_pisos = total_larg * total_comp

print(f"Peças para cobrir a Largura do salão: {total_larg} peças \n Peças para cobrir o comprimento do salão: {total_comp} peças")
print(f"Total de peças para cobrir o salão: {total_pisos} peças")