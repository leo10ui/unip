/*2. Escreva uma aplicação que leia um valor numérico real (tipo double) que representa
uma temperatura na escala Celsius. O programa deve converter tal valor em seu
equivalente na escala Fahrenheit. O resultado deve ser impresso no console.
fahrenheit = (celsius * 9)/5 + 32 */

//importa Scanner
import java.util.Scanner;
public class Exercicio2 {
    public static void main(String[]args){
        //Declara as variáveis
        double celsius, fahrenheit;
        //Cria um objeto Scanner
        Scanner sc = new Scanner(System.in);
        System.out.println("Digite a temperatura em graus Celsius: ");
        celsius = sc.nextDouble();
        fahrenheit = (celsius * 9)/5 + 32;
        System.out.println("A temperatura convertida é " + fahrenheit + "°F");
    }
}
