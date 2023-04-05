package jogoRedBlack;

public class Baralho{
    // Baralho contem um Array de cartas
    private Carta cartas[];
    // Estado embaralhado ou ordenado
    private boolean embaralhado;
    // Quantidade de cartas disponiveis
    private int disponiveis;
    
    // Construtor default
    // Prepara um baralho simpoles (uma carta de cada valor e naipe)
    public Baralho() {
		// Inicializa n�mero de cartas dispon�veis
		disponiveis = Carta.Naipe.values().length * Carta.Valor.length;
		// Inicializa arrays de cartas
		cartas = new Carta[disponiveis];
		// la�os aninhados criam uma carta de cada valor e naipe
		for (Carta.Naipe n : Carta.Naipe.values()) {
			for (int v = 1; v<=Carta.Valor.length; v++) {
				int pos = v + n.ordinal() * Carta.Valor.length - 1;
				cartas[pos] = new Carta(v, n, n);
			}
		}
		// baralho est� ordenado
		embaralhado = false;
	}
    
    // Retira uma carta do baralho (a Ultima)
    // Array de cartas sera usado como uma pilha!
    public Carta getCarta() {
        if (disponiveis > 0){
            return cartas[--disponiveis];
        }
        return null;
    }
    
    // Verifica se esta ou nao embaralhado
    public boolean isEmbaralhado(){
        return embaralhado;
    }
    
    // Retorna quantidade de cartas disponiveis
    public int getDisponiveis(){
        return disponiveis;
    }
    
    // Embaralha cartas
    public void embaralhar() {
        for (int n=0; n < disponiveis; n++){
            Carta aux = cartas[n];
            int p = (int) (Math.random() * disponiveis);
            cartas[n] = cartas[p];
            cartas[p] = aux;
        }
    }
    
    // Exibe monte (pilha) de cartas
    public String toString(){
        StringBuilder sb = new StringBuilder("[");
        for (int n=0; n < disponiveis; n++){
            sb.append(cartas[n]);
            sb.append(",");
        }
        sb.append("]");
        return sb.toString();
    }
    
}