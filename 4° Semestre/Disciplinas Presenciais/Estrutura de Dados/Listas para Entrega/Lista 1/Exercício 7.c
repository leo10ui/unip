/*7)  um programa em C que leia a idade de uma pessoa e informe:
• Se é maior de idade
• Se é menor de idade
• Se é maior de 65 anos
(a idade para ser considerado maior é a partir de 18 anos)*/

#include <stdio.h>
#include <locale.h>
void lpe1ex7()
{
    setlocale(LC_ALL,"");
    int i;
    printf("\nDigite a idade: ");
    scanf("%d",&i);
    if (i > 65){
        printf("\nA pessoa é maior de idade e possui mais que 65 anos.");
    }
    else if (i < 18){
        printf("\nA pessoa é menor de idade.");
    }
    else{
        printf("\nA pessoa é maior de idade.");
    }
    system("pause");
}