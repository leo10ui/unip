/*7. Escreva um programa que leia um arranjo com
20 valores reais e apresente em separado a
soma dos valores positivos e negativos.*/
import java.util.Scanner;
public class Ex7 {
    public static void main(String[]args){
        double v[] = new double[20];
        double soma_pos=0, soma_neg=0;
        Scanner sc = new Scanner(System.in);
        //Loop para Preencher o Array
        for(int i=0; i < v.length; i++){
            System.out.println("Digite o " + (i+1) + "° valor do Array: ");
            v[i] = sc.nextDouble();
            //Faz a soma dos números positivos
            if(v[i] >= 0){
                soma_pos = soma_pos + v[i];
            }
            //Faz a soma dos números negativos
            else{
                soma_neg = soma_neg + v[i];
            }
        }
        System.out.println("Soma Positivos = " + soma_pos);
        System.out.println("Soma Negativos = " + soma_neg);
    }
}
