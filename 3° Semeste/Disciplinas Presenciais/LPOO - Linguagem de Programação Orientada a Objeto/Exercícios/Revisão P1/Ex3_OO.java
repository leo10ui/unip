/*3) Dado um array com 6 valores reais dados pelo usuário,
 determinar a soma total, media, maior valor, menor valor.*/
import java.util.Scanner;
public class Ex3_OO {
    public static void main(String[]args){
        Scanner sc = new Scanner(System.in);
        OpVetor_Ex3 opV = new OpVetor_Ex3();
        double v[] = new double [6];

        for(int i=0; i < v.length; i++){
            System.out.println("Digite o " + (i+1) + "° valor: ");
            v[i] = sc.nextDouble();
        }
        System.out.println("Soma: " + opV.soma(v));
        System.out.println("Média: " + opV.media(v));
        System.out.println("Maior Valor: " + opV.maior_v(v));
        System.out.println("Menor Valor: " + opV.menor_v(v));
    }
}
