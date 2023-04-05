/*2. Escreva um programa que leia um arranjo de 20
elementos reais, exibindo seus valores, sua
soma e também sua média.*/

import java.util.Scanner;

public class Ex2 {
    public static void main(String[] args) {
        double[] v = new double[20];
        double soma = 0, media = 0;
        Scanner sc = new Scanner(System.in);

        //Loop para Preencher o Array
        for (int i = 0; i < v.length; i++) {
            System.out.println("Digite o " + (i + 1) + "° número:");
            v[i] = sc.nextDouble();
        }
        //Loop para Printar o Array e Fazer a Soma
        System.out.println("Array Digitado:");
        for (int i = 0; i < v.length; i++) {
            System.out.println(v[i] + "|");
            soma = soma + v[i];
        }
        media = soma / v.length;
        //Printa a Soma e a Média
        System.out.println("Soma = " + soma);
        System.out.println("Média = " + media);
    }
}
