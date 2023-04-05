/*5. Escreva um programa que leia um arranjo de 10
elementos inteiros, identificando e exibindo o
menor valor presente no arranjo e sua posição.*/
import java.util.Scanner;
public class Ex5 {
    public static void main(String[]args){
        int v[] = new int [10];
        int menor_valor, pos=0;
        Scanner sc = new Scanner(System.in);
        //Loop para Preencher o Array
        for(int i=0; i < v.length; i++){
            System.out.println("Digite o " + (i+1) + "° valor:");
            v[i] = sc.nextInt();
        }
        menor_valor = v[0];
        //Loop para Checar o Menor Valor
        for(int i=0; i < v.length; i++){
            if(v[i] < menor_valor) {
                menor_valor = v[i];
                pos = i;
            }
        }
        System.out.println("Menor Valor: v[" + pos + "] = " + menor_valor);
    }
}
