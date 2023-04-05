/*4. Escreva um programa que leia um arranjo de 10
elementos inteiros, identificando e exibindo o
maior valor presente no arranjo.*/

import java.util.Scanner;

public class Ex4 {
    public static void main(String[] args) {
        int[] v = new int[10];
        int maior_valor;
        Scanner sc = new Scanner(System.in);
        //Loop para Preencher o Array
        for (int i = 0; i < v.length; i++) {
            System.out.println("Digite o " + (i + 1) + "° valor:");
            v[i] = sc.nextInt();
        }
        maior_valor = v[0];
        //Loop para Checar o Maior Valor
        for (int i = 0; i < v.length; i++) {
            if (v[i] > maior_valor) {
                maior_valor = v[i];
            }
        }
        System.out.println("Maior Valor: " + maior_valor);
    }
}
