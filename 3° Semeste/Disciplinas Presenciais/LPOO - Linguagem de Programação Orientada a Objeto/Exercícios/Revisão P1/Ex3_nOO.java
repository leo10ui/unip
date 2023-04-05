/*3) Dado um array com 6 valores reais dados pelo usuário,
determinar a soma total, media, maior valor, menor valor.*/
import java.util.Scanner;
import java.util.Arrays;
public class Ex3_nOO {
    public static void main(String[]args){
        double soma = 0, media, menor_valor, maior_valor;
        Scanner sc = new Scanner(System.in);
        double v[] = new double [6];
        for(int i=0; i < v.length; i++){
            System.out.println("Digite o " + (i+1) + "° valor: ");
            v[i] = sc.nextDouble();
        }
        for(int i=0; i < v.length; i++){
            soma = soma + v[i];
        }
        media = soma / v.length;
        Arrays.sort(v);
        System.out.println("Soma: " + soma);
        System.out.println("Média: " + media);
        System.out.println("Menor valor do digitado: " + v[0]);
        System.out.println("Maior valor digitado: " + v[v.length-1]);
    }
}
