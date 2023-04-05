/*1. Escreva um programa que leia um arranjo de 10
elementos inteiros, exibindo seus valores, sua
soma e também sua média.*/
import java.util.Scanner;
public class Ex1 {
    public static void main(String[]args){
        int v[] = new int [10];
        int soma = 0;
        int media = 0;
        Scanner sc = new Scanner(System.in);

        //Loop para preencher o array
        for(int i=0; i < v.length; i++) {
            System.out.println("Digite o " + (i+1) + "° número:");
            v[i] = sc.nextInt();
        }
        System.out.println("Array Digitado:");
        //Loop para Printar o Array e Fazer a Soma
        for (int i =0; i < v.length; i++) {
            System.out.println(v[i] + "|");
            soma = soma + v[i];
        }
        //Faz a media
        media = soma / v.length;
        //Printa a Soma e a Média
        System.out.println("Soma = " + soma);
        System.out.println("Média = " + media);
    }
}
