/* 3. Escreva uma aplicação que leia um valor numérico real (tipo double) que representa
uma temperatura na escala Fahrenheit. O programa deve converter tal valor em seu
equivalente na escala Celsius. O resultado deve ser impresso no console.
celsius = 5*(fahrenheit -32)/9 */

//importa Scanner
import java.util.Scanner;
public class Exercicio3 {
    public static void main(String[]args){
        //Declara as variáveis
        double fahrenheit, celsius;
        //Cria um objeto Scanner
        Scanner sc = new Scanner(System.in);
        System.out.println("Digite a temperatura em graus Fahrenheit: ");
        fahrenheit = sc.nextDouble();
        celsius = 5*(fahrenheit -32)/9;
        System.out.println("A temperatura convertida em graus Celsius é: " + celsius + "°C");
    }
}
