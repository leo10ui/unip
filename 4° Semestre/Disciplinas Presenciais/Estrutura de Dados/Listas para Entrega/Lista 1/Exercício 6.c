/*6) Faça um programa em C que leia três números inteiros e imprima os três em
ordem crescente.*/
#import <stdio.h>
#import <locale.h>
void lpe1ex6()
{
    setlocale(LC_ALL,"");
    int n1,n2,n3,aux;
    printf("\nDigite o primeiro número:");
    scanf("%d",&n1);
    printf("\nDigite o segundo número:");
    scanf("%d",&n2);
    printf("\nDigite o terceiro número:");
    scanf("%d",&n3);
    printf("\nn1 = %d | n2 = %d | n3 = %d | aux = %d",n1,n2,n3,aux);
    if(n1 > n2){
        aux = n1;
        n1 = n2;
        n2 = aux;
    }
    printf("\nn1 = %d | n2 = %d | n3 = %d | aux = %d",n1,n2,n3,aux);
    if(n2 > n3){
        aux = n2;
        n2 = n3;
        n3 = aux;
    }
    printf("\nn1 = %d | n2 = %d | n3 = %d | aux = %d",n1,n2,n3,aux);
    if(n1 > n2){
        aux = n1;
        n1 = n2;
        n2 = aux;
    }
    printf("\nn1 = %d | n2 = %d | n3 = %d | aux = %d",n1,n2,n3,aux);
}