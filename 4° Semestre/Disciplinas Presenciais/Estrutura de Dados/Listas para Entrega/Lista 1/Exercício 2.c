/* 2)	Faça um programa em C que leia três números reais e calcule a média aritmética destes números.
 Ao final, o programa deve imprimir o resultado do cálculo. */

#include <stdio.h>
#include <locale.h>

void lpe1ex2()
{
    setlocale(LC_ALL, "Portuguese");
    float n1, n2, n3, media;
    printf("Digite o primeiro número: ");
    scanf("%f", &n1);
    printf("Digite o segundo número: ");
    scanf("%f", &n2);
    printf("Digite o terceiro número: ");
    scanf("%f", &n3);
    media = (n1 + n2 + n3) / 3;
    printf("A média aritmética dos números %.2f",media);
    system("pause");
}