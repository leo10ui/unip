//Aluno: Leonardo de Souza Rodrigues
//RA: F344HB2

var A = []; //Define o array para armazenar os números da matriz A
var B = []; //Define o array para armazenar os números da matriz B
A[0] = 5;
A[1] = 10;
A[2] = 30;
A[3] = 4;
A[4] = 7;
A[5] = 120;
A[6] = 12;
A[7] = 34;

var i = 0; /*Contador para o for*/
var ctl = 0; /*Contador para o while*/

for (A[i]; i <= 8; i++) {
  if (A[i] % 2 == 0) {
    /*Se o número do índice for par*/
    B[i] = A[i] * 5; /*Multiplica-se por 5*/
  } /*Se o número do índice for ímpar*/ else {
    B[i] = A[i] + 5; /*Soma-se 5*/
  }
}
