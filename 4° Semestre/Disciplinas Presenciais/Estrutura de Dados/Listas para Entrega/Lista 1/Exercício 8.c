/*8)Faça um programa que permita entrar com o salário de uma pessoa e imprima o
desconto do INSS segundo a tabela seguir:
______________________________________________________________________________
|                      Salário							|  Faixa de Desconto |
|Menor ou igual à R$1100,00 							|	Isento           |
|Maior que R$1200,00 e menor ou igual a R$1500,00		|	20%              |
|Maior que R$1500,00 e menor ou igual a R$2200,00  		|	25%              |
|Maior que R$2200,00									|	30%              |
|_______________________________________________________|____________________|*/

#include <stdio.h>
#include <locale.h>
void lpe1ex8()
{
    setlocale(LC_ALL,"");
    float sal;
    printf("\nInsira o valor do salário: ");
    scanf("%f",&sal);
    if (sal <= 1100){
        printf("\nSalário: R$%.2f",sal);
        printf("\nFaixa de desconto: Isento");
    }
    else if (sal > 1200 && sal <= 1500){
        printf("\nSalário: R$%.2f",sal);
        printf("\nFaixa de desconto: 20%%");
    }
    else if(sal > 1500 && sal <= 2200){
        printf("\nSalário: R$%.2f",sal);
        printf("\nFaixa de desconto: 25%%");
    }
    else if(sal > 2200){
        printf("\nSalário: R$%.2f",sal);
        printf("\nFaixa de desconto: 30%%");
    }
    system("pause");
}