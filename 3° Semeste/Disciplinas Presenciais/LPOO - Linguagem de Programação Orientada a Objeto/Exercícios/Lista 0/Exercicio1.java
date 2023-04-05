/* 1. Construa uma aplicação que receba (leia) dois números inteiros (tipo int) x e y,
apresentando sua soma x+y, subtração, x-y, multiplicaçã x*y e divisão x/y, ou seja,
imprimindo os valores lidos e os resultados destas operações no console. */

//importa Scanner
import java.util.Scanner;
public class Exercicio1{
  public static void main (String [] args){
    //Declara as variáveis
    int x, y;
    //Cria um objeto Scanner
    Scanner sc = new Scanner(System.in);
    System.out.println("Digite um número inteiro: ");
    x = sc.nextInt();
    System.out.println("Digite outro número inteiro: ");
    y = sc.nextInt();
    System.out.println("Soma: " + x+y);
    System.out.println("Subtração: " + (x-y));
    System.out.println("Multiplicação: " + x*y);
    System.out.println("Divisão: " + x/y);
  }
}