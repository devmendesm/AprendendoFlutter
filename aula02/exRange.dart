import 'dart:io';

void main() {
  List<int> numeros = List.filled(8, 0);
  int dentro = 0;
  int fora = 0;

  for (int i = 1; i <= 8; i++) {
    stdout.write("Digite o $i° valor: ");
    numeros[i - 1] = int.parse(stdin.readLineSync()!);

    if (numeros[i - 1] >= 25 && numeros[i - 1] <= 34) dentro++;
    else fora++;
  }
  
  print("A quantidade de valores entre 25 e 34 são $dentro e os que estão fora $fora");
  print("Os valores digitados foram: $numeros");
}
