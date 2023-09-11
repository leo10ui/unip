/* 3)	Faça um programa que leia um número e imprima uma das duas mensagens:
 "É múltiplo de 4"ou "Não é múltiplo de 4".*/

#include <stdio.h>
#include <locale.h>
void lpe1ex3()
{
    setlocale(LC_ALL, "Portuguese");
    int num;
    printf("Digite um número: ");
    scanf("%d", &num);
    if (num % 4 == 0)
    {
        printf("É múltiplo de 4");
    }
    else
    {
        printf("Não é múltiplo de 4");
    }
}