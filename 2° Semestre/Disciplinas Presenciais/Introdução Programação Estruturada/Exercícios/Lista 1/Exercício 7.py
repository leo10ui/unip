preco_gas = float(input("Digite o Preço da Gasolina Comum: "))
preco_etanol = float(input("Digite o Preço do Etanol: "))

gasto_tanque_gas = preco_gas * 50
gasto_tanque_etanol = preco_etanol * 50

valor_relativo = preco_etanol / preco_gas

comparativo = preco_gas / preco_etanol

print(f"Para abastecer um tanque de 50 litros com gasolina seria necessário gastar R${gasto_tanque_gas}, já utilizando etanol seria gasto R${gasto_tanque_etanol}")
print(f"O valor relativo entre os dois combustíveis é de R${valor_relativo}")
print(f"{comparativo} Litros de etanol podem ser comprados com o preço de 1 litro de gasolina comum.")