var num_vezes = 1;
var menor5 = 0;
var maior5 = 0;
while (num_vezes <= 10) {
  var num_typed = window.prompt("Por favor, digite um número: ");
  if (num_typed < 5) {
    menor5++;
  } else {
    maior5++;
  }
  num_vezes++;
}
