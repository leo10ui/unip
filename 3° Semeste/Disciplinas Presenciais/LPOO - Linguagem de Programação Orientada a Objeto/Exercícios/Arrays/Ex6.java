/*6. Construa um programa que crie um arranjo de
String com o tamanho indicado pelo usuário
(será preciso ler tal valor inteiro em seu início).
Preencha o arranjo com Strings dadas pelo
usuário, exibindo o arranjo ao final.*/
import java.util.Scanner;
public class Ex6 {
    public static void main(String[]args){
        Scanner sc = new Scanner(System.in);
        int tam;
        System.out.println("Digite o Tamanho do Array:");
        tam = sc.nextInt();
        String v[] = new String [tam];
        for(int i=0; i < v.length; i++){
            System.out.println("Digite a " + (i+1) + "° palavra:");
            v[i] = sc.next();
        }
        for(int i=0; i < v.length; i++){
            System.out.print(v[i] + "|");
        }
    }
}
