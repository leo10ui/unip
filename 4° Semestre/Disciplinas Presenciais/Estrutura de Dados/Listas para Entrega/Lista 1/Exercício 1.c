/* 1)	Faça um programa em C que leia um número real e imprima ¼ deste número. */
#import <stdio.h>
#import <locale.h>
void lpe1ex1(){
    setlocale(LC_ALL, "Portuguese");
    float num;
    printf("Digite um número real: ");
    scanf("%f", &num);
    printf("O quarto do número digitado é: %f", num/4);
    system("pause");
}