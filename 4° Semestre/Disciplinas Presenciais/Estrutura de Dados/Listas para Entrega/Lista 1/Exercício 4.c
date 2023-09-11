/*4)	Faça um programa que leia um número e informe se ele é ou não divisível por 5.*/
#include <stdio.h>
#include <locale.h>
void lpe1ex4()
{
    setlocale(LC_ALL, "Portuguese");
    int num;
    printf("Digite um número: ");
    scanf("%d", &num);
    if (num % 5 == 0)
    {
        printf("É divisível por 5");
    }
    else
    {
        printf("Não é divisível por 5");
    }
}