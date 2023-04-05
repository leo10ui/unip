package jogoRedBlack;

import java.util.Scanner;

public class RedBlack {

    // Elementos do jogo
    private Baralho baralho; // O baralho
    private String cor_desejada; // Variavel que guarda a cor que o usuario deseja advinhar
    private Carta [] cartas_selecionadas = new Carta[5];// Array que guarda as cartas selecionadas no baralho
    private int blacks; // Variavel que guarda a quantidade de cartas Pretas
    private int reds; // Variavel que guarda a quantidade de cartas Vermelhas
    private int palpite_blacks; // Variavel que guarda o palpite em relacao a quantidade de cartas pretas
    private int palpite_reds; // Variavel que guarda o palpite em relacao a quantidade de cartas pretas
    // Scanner do jogo
    private Scanner sc; // Variavel do Scanner
    
    // Construtor
    public RedBlack(){
        // Instanciacao do baralho e o embaralha
        baralho = new Baralho();
        baralho.embaralhar();
        // Instanciacao do scanner
        sc = new Scanner(System.in);
    }
    
    // Estrutura do jogo
    public void jogar(){
        System.out.println("Embaralhando o baralho...");
        baralho.embaralhar();
        System.out.println("Separando 5 cartas do baralho");
        for (int i = 0; i<5; i++){
            Carta carta = baralho.getCarta();
            cartas_selecionadas[i] = carta;
            // Comparando a cor das cartas 
            if(carta.getCor().toString() == "Preto"){
                blacks ++;
            } else {
                reds ++;
            }
        }
        
        System.out.println("Pronto!");
        
        System.out.println("Escolha qual cor voce deseja tentar adivinhar [Vermelho, Preto]:");
        cor_desejada = sc.next().toUpperCase();
        // Compara a resposta do usuario
        if(cor_desejada.startsWith("V")){
            System.out.println("Digite um numero [1..5] para tentar adivinhar a quantidade de cartas Vermelhas: ");
            palpite_reds = sc.nextInt();
        } else {
            System.out.println("Digite um numero [1..5] para tentar adivinhar a quantidade de cartas Pretas: ");
            palpite_blacks = sc.nextInt();
        }
        
        // Se o jogador acertar um dos dois palpites, ele ganha.
        if(palpite_blacks == blacks || palpite_reds == reds ){
            System.out.println("Voce Venceu!!!");
        } else {
            System.out.println("Voce Perdeu!!!");
        }
        mostraCartas(cartas_selecionadas, blacks, reds);
    }
    
    // Metodo auxiliar para mostrar as cartas selecionadas e a quantidade de cartas
    public void mostraCartas(Carta cartas[], int b, int r){
        System.out.println("--- Cartas Selecionadas ---");
        for (int i =0; i< cartas.length;i++){
                System.out.println("    " + cartas[i]);
            }
        System.out.println("--------------------------");
        System.out.println("Cartas Pretas: " + b);
        System.out.println("Cartas Vermelhas: " + r);
    }
    
    // Inicia o programa e o jogo
    public static void main(String[] args){
        new RedBlack().jogar();
    }
    
}
