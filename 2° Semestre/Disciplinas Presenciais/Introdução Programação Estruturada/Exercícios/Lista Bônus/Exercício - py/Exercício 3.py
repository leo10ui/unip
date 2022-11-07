'''3) Desenvolver um programa para que um usuário informando a distância entre dois pontos e o tempo gasto
no percurso, tenha como resposta a velocidade obtida no trajeto. Lembre-se que V = S/T. Adotar as unidades:
km para a distância e hora para o tempo. O diferencial desse exercício é que deverá ser retornado um aviso
de multa caso a velocidade tenha ultrapassado o limite de 100 KM/H e uma outra mensagem de boa conduta,
caso contrário.'''

def vel(d,t):
  v = d / t
  return v

def msg(v):
  if v > 100:
    return "Você andou acima do limite de velocidade. Será multado pela sua conduta."
  else: 
    return "Parabéns, você é um ótimo motorista."

d = float(input("Informe a distância em KM:"))
t = float(input("Digite o tempo gasto em horas: "))

v = vel (d,t)
msg = msg(v)

print(f"Sua velocidade média foi de {v} KM/h. {msg}")