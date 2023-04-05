/*1) Desejamos determinar o IMC de uma pessoa e apresentar sua classificação,
 sendo que IMC = (massa / altura^2), e o usuário fornece sua massa e altura. */
import java.util.Scanner;
public class Ex1_nOO {
    public static void main(String[]args){
        double massa, altura, imc;
        String classific = "";
        Scanner sc = new Scanner(System.in);
        System.out.println("Digite sua massa: ");
        massa = sc.nextDouble();
        System.out.println("Digite sua altura: ");
        altura = sc.nextDouble();
        imc = massa / Math.pow(altura, 2);

        if(imc < 15) {
			classific = "Anorexia";
		}
		else if(imc < 20 && imc > 15) {
			classific = "Subpeso";
		}
		else if(imc > 20 && imc < 26) {
			classific = "Peso Normal";
		}
		else if(imc > 25 && imc < 31) {
			classific = "Sobrepeso";
		}
		else if(imc >30) {
            classific = "Obesidade";
        }

        System.out.println("IMC: " + imc);
        System.out.println("Classificação: " + classific);
    }
}
