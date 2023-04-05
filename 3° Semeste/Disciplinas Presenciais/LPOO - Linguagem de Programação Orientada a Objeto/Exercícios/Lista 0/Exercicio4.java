/* 4. Construa uma aplicação que receba (leia) três números reais (tipos double).
Considere que estes três valores são os coeficientes a, b e c de uma equação de 2º
grau. Calcule o delta (= b² - 4*a*c) e exiba seu valor no console. */

//importa Scanner
import java.util.Scanner;
public class Exercicio4 {
    public static void main(String[]args){
        //Declara as variáveis
        double a, b, c, delta;
        //Cria um objeto Scanner
        Scanner sc = new Scanner(System.in);
        System.out.println("Digite o valor de A:");
        a = sc.nextDouble();
        System.out.println("Digite o valor de B:");
        b = sc.nextDouble();
        System.out.println("Digite o valor de C:");
        c = sc.nextDouble();
        delta = b*b - 4*a*c;
        System.out.println("O valor de Delta é: " + delta);
    }
}
