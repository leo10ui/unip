/*1) Desejamos determinar o IMC de uma pessoa e apresentar sua classificação,
 sendo que IMC = (massa / altura^2), e o usuário fornece sua massa e altura. */
import java.util.Scanner;
public class Ex1_OO {
    public static void main(String[]args){
        Scanner sc = new Scanner(System.in);
        CalcIMC_Ex1 calc = new CalcIMC_Ex1();
        System.out.println("Digite sua massa: ");
        calc.setMassa(sc.nextDouble());
        System.out.println("Digite sua altura: ");
        calc.setAltura(sc.nextDouble());
        System.out.println("Sua massa: " + calc.getMassa());
        System.out.println("Sua altura: " + calc.getAltura());
        System.out.println("Seu IMC: " + calc.calc_imc() + " - " + calc.classif());
    }
}
