/* 5. Escreva uma aplicação que leia um valor numérico inteiro x. Exiba o resultado do
resto da divisão inteira do número lido por 2 (x % 2), exibindo o resultado no
console. */

//importa Scanner
import java.util.Scanner;
public class Exercicio5 {
    public static void main(String[]args){
        //Declara as variáveis
        int x, resto;
        //Cria um objeto Scanner
        Scanner sc = new Scanner(System.in);
        System.out.println("Digite um valor inteiro para x:");
        x = sc.nextInt();
        resto = x%2;
        System.out.println("O resto da divisão de " + x + " por 2 é: " + resto);
    }
}
