import 'dart:io';

void main() {
  int par = 0;
  int impar = 0;
  List <int> num = List.filled(10, 0);

  for (int i = 1; i <= 10; i++) {
    stdout.write("Digite o $i° valor: ");
    num[i - 1] = int.parse(stdin.readLineSync()!);

    if (num[i - 1] % 2 == 0) {
      par++;
    } else {
      impar++;
    }
  }

  print("A quantidade de pares é $par e a de impares é $impar");
  print("Os valores digitados foram $num");
}