/*2) É necessário validar dois números reais em uma faixa de
0 a 100 para apresentar sua média simples, sendo que m=(x+y)/2.*/
import java.util.Scanner;
public class Ex2_nOO {
    public static void main(String[]args){
        double x,y,m;
        Scanner sc = new Scanner(System.in);
        do {
            System.out.println("Digite o 1° número: ");
            x = sc.nextDouble();
        } while(x < 0 || x > 100);
        do {
            System.out.println("Digite o 2° número: ");
            y = sc.nextDouble();
        } while(y < 0 || y > 100);
        m = (x+y) / 2;
        System.out.printf("A média é: " + m);
    }
}
