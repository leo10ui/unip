package jogoRedBlack;

import java.util.ArrayList;

public class Mao {
    // ArrayList (lista) com as Cartas do jogador
    private ArrayList<Carta> cartas;
    // Nome do Jogador
    private String nome;
    
    //Construtor parametrizado: recebe nome do jogador
    public Mao(String n){
        //Instancia ArrayList das cartas
        cartas = new ArrayList<>();
        // Inicializa nome
        nome = n;
    }
    
    // Adiciona carta na mao
    public void receberCarta (Carta carta) {
        cartas.add(carta);
    }
    
    // Retorna numero de cartas da Mao
    public int getNumeroCartas() {
        return cartas.size();
    }
    
    // Retorna carta indicada (sem descarta-la)
    public Carta getCarta(int p) {
        // Verifica se carta existe
        if (p<0 || p>= cartas.size()){
            return null;
        }
        return cartas.get(p);
    }
    
    // Retorna nome do jogador
    public String getNome(){
        return nome;
    }
}