import java.util.Arrays;
public class OpVetor_Ex3 {
    double soma = 0, media, maior_valor, menor_valor;

    public double soma(double v[]){
        for(int i=0; i < v.length; i++){
            soma = soma + v[i];
        }
        return soma;
    }

    public double media(double v[]){
        soma = 0;
        for(int i=0; i < v.length; i++){
            soma = soma + v[i];
        }
        media = soma / v.length;
        return media;
    }

    public double menor_v(double v[]){
        Arrays.sort(v);
        menor_valor = v[0];
        return menor_valor;
    }

    public double maior_v(double v[]){
        Arrays.sort(v);
        maior_valor = v[v.length - 1];
        return maior_valor;

    }
}
