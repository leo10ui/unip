/*9. Escreva um programa que leia um número N
inteiro, criando um arranjo de tipo long com o
tamanho do valor dado e preenchido com
potências de 2: 2^0, 2^1, 2^2, 2^3, 2^4...2^N*/
import java.util.Scanner;
public class Ex9 {
    public static void main(String[]args){
        Scanner sc = new Scanner(System.in);
        System.out.println("Digite o tamanho do Array");
        int N = sc.nextInt();
        long v[] = new long[N];
        for(int i=0; i < v.length; i++){
            v[i] = (int) Math.pow(2,i);
            System.out.print(v[i] + "|");
        }
    }
}
