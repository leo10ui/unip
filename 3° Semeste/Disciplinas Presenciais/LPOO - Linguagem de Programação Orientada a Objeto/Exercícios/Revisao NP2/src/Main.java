import java.util.Scanner;
public class Main {
    public static void main(String[]args) {
        int cod, dtFab, prazoVal, garantia;
        String desc, fab;
        double preco;

        Perecivel pe2 = new Perecivel();

        Scanner sc = new Scanner(System.in);
        System.out.println("Digite o código do produto: ");
        cod = sc.nextInt();
        System.out.println("Digite a descrição do produto: ");
        desc = sc.next();
        System.out.println("Digite o fabricante do produto: ");
        fab = sc.next();
        System.out.println("Digite o preço do produto: ");
        preco = sc.nextDouble();
        System.out.println("Digite a data de fabricação do produto: ");
        dtFab = sc.nextInt();
        System.out.println("Digite o prazo de validade do produto: ");
        prazoVal = sc.nextInt();


        Produto p1 = new Perecivel(cod,desc,fab,preco,dtFab,prazoVal);
        System.out.println(p1.toString());
    }
}
