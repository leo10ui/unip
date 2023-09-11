/*5) A empresa Dados Autêntico, abriu uma linha de crédito para os seus funcionários.
 O valor máximo da prestação não poderá ultrapassar 40% do salário bruto. Faça um programa em
 linguagem C que permita entrar com o salário bruto e o valor da prestação e informar se o
 empréstimo pode ou não ser concedido.*/
#include <stdio.h>
#include <locale.h>
void lpe1ex5(){
    setlocale(LC_ALL,"");
    float sal,prest;
    printf("\nDigite o salário bruto:");
    scanf("%f",&sal);
    printf("\nDigite o valor da prestação:");
    scanf("%f",&prest);
    if(prest <= (sal * 0.4)){
        printf("\nO empréstimo poderá ser concedido.");
    }
    else{
        printf("\nO empréstimo não poderá ser concedido.");
    }
}