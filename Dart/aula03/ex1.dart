import 'dart:io';

void main() {
  stdout.write("Digite um número: ");
  int numero = int.parse(stdin.readLineSync()!);

  print("Utilizando estrutura FOR");
  for (int i = 0; i <= numero; i++) {
    if (i % 2 == 0) {
      stdout.write("$i... ");
    } else {
      continue;
    }
  }
  print("Acabou");

  int i = 0;
  print("Utilizando estrutura WHILE");
  while (i <= numero) {
    if (i % 2 == 0) {
      stdout.write("$i... ");
    }
    i++;
  }
  print("Acabou");
}
