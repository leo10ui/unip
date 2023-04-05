/*8. Escreva um programa que leia um arranjo com
20 valores caracteres e apresente em quais
posições existem vogais.*/
import java.util.Scanner;
public class Ex8 {
    public static void main(String[]args){
        Scanner sc = new Scanner(System.in);
        int i,j = 0;
        char v[] = new char [20];
        String vogais[] = new String [20];
        for(i=0; i < v.length; i++) {
            System.out.println("Digite o " + (i + 1) + "° caractere:");
            v[i] = sc.next().charAt(0);
        }
        for(i=0; i < v.length; i++){
            if(v[i] == 'a' || v[i] == 'e' || v[i] == 'i' || v[i] == 'o' || v[i] == 'u'){
                vogais[j] = "v[" + i + "]";
                j++;
            }
        }
        for(i=0; i < vogais.length; i++){
            System.out.print(vogais[i] + "|");
        }
    }
}