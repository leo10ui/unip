package jogoRedBlack;

public class Carta {
    // Definição dos Naipes
    public static enum Naipe { Paus, Copas, Espadas, Ouros};
    // Nomes dos valores das cartas
    public static String[] Valor = {
        "As", "2", "3","4","5","6","7","8","9","10","J","Q","K"
    };
    // Definicao das cores
    public static enum Cor {Vermelho, Preto}; // ***Novo
    
    // Atributos da carta: valor, naipe e cor da carta
    private int valor;
    private Naipe naipe;
    private Cor cor; // ****Novo
    
    // Metodos de acesso para naipe e valor
    protected void setNaipe(Naipe naipe) {
        this.naipe = naipe;
    }
    public Naipe getNaipe(){
        return naipe;
    }
    
    protected void setValor(int valor) {
        if (valor <1 || valor > 13){
           throw new RuntimeException("Valor inválido: " + valor);
        }
        this.valor = valor;
    }
    protected int getValor(){
        return valor;
    }
    
    // ***Novo
    protected void setCor(Naipe naipe){
        if (naipe == Naipe.Ouros || naipe == Naipe.Copas){
            this.cor = cor.Vermelho;
        }else{
            this.cor = cor.Preto;
        }
    }
    // ***Novo    
    public Cor getCor(){
        return cor;
    }
    // Representacao textual da carta:
    // "<valor> de <naipe>
    public String toString(){
        return Valor[valor-1] + " de " + naipe + " | " + cor;
    }
    
    // Construtor *** Novo argumento na função construtora
    public Carta(int valor, Naipe naipe, Naipe cor) {
        setNaipe(naipe);
        setValor(valor);
        setCor(naipe); // *** Novo
    }
}