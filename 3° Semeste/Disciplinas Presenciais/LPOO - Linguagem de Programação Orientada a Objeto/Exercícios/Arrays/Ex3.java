/*3. Escreva um programa que leia 2 arrays A e B, de
valores reais e de tamanho 15. Com uso de um
3o arranjo, some os arranjos, posição à posição
(C[0] = A[0]+B[0], C[1] = A[1]+B[1] ...), exibindo o
array resultante.*/
import java.util.Scanner;
public class Ex3 {
    public static void main(String[]args){
    double A[] = new double [15];
    double B[] = new double [15];
    double soma[] = new double [15];
    Scanner sc = new Scanner(System.in);
    //Loop para Preencher o Array A
    for(int i=0; i < A.length; i++){
        System.out.println("Digite o " + (i+1) + "° valor do array A:");
        A[i] = sc.nextDouble();
    }
    //Loop para Preencher o Array B
    for(int i=0; i < B.length; i++){
        System.out.println("Digite o " + (i+1) + "° valor do array B:");
        B[i] = sc.nextDouble();
    }
    System.out.println("Soma dos Arrays A e B:");
    //Loop para Fazer a Soma do Array A e do Array B
    for(int i=0; i < soma.length; i++){
        soma[i] = A[i] + B[i];
        System.out.print(soma[i] + "|");
    }
    }
}