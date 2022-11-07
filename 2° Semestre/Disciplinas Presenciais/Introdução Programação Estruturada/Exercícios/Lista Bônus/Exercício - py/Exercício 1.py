'''1) Desenvolver um programa para efetuar o cálculo da quantidade de combustível gastas em uma viagem,
utilizando-se um automóvel que faz 12 Km por litro. Para obter o cálculo, o usuário deverá fornecer o tempo
gasto na viagem e a velocidade média durante a mesma. Desta forma, será possível obter a distância
percorrida com a fórmula: DISTANCIA = TEMPO * VELOCIDADE. Tendo o valor da distância, basta calcular a
quantidade de litros de combustível utilizada na viagem com a fórmula: LITROS_USADOS = DISTANCIA/12. O
programa deverá apresentar os valores da velocidade média, tempo gasto, a distância percorrida e a
quantidade de litros utilizada na viagem.'''

def cal_dist(t,v):
  d = t * v
  return d

def cal_gas(d):
  gas = d / 12
  return gas

t = int(input("Digite o tempo da viagem (em horas): "))
v = int(input("Digite a velocidade média (em KM/h): "))
d = cal_dist(t,v)
gas = cal_gas(d)

print(f"Você viajou por {d} KM e gastou {gas} litros de combustível.")
print(f"O tempo de viagem foi de {t} horas, a uma velocidade média de {v} KM/h.")