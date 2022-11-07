'''7) Defina uma função chamada velocidade_media() em um script chamado funções.py que receba dois parâmetros: a
distância percorrida (em metros) e o tempo (em segundos). Forneça à função a fórmula para o cálculo da velocidade
média e teste o seu código chamando a função para os valores abaixo:
* Distância: 100, tempo: 20
* Distância: 150, tempo 22
* Distância: 200, tempo 30
* Distância: 50, tempo 3'''

def velocidade_media(d,t):
  v = d / 2
  return v

print(f"A velocidade média foi de {int(velocidade_media(100,20))} m/s.")
print(f"A velocidade média foi de {int(velocidade_media(150,22))} m/s.")
print(f"A velocidade média foi de {int(velocidade_media(200,30))} m/s.")
print(f"A velocidade média foi de {int(velocidade_media(50,3))} m/s.")