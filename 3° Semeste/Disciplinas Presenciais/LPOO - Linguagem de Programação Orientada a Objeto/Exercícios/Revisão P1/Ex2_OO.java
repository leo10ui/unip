/*2) É necessário validar dois números reais em uma faixa de
0 a 100 para apresentar sua média simples, sendo que m=(x+y)/2.*/
import java.util.Scanner;
public class Ex2_OO {
    public static void main(String[]args){
        Scanner sc = new Scanner(System.in);
        CalMedia c = new CalMedia();

        System.out.println("Digite o valor de x: ");
        c.setX(sc.nextDouble());

        System.out.println("Digite o valor de y: ");
        c.setY(sc.nextDouble());

        System.out.println("A média dos dois valores é: " + c.CalcMedia());
    }
}
