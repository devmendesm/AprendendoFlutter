import 'dart:io';

void main() {
  stdout.write("Digite um número: ");
  int numero = int.parse(stdin.readLineSync()!);

  for(int i = 0; i <= numero; i++) {
    if (i % 2 == 0) {
      print(i);
    } else {
      continue;
    }
  }
  print("Acabou");

  int i = 0;
  while(i <= numero) {
    if (i % 2 == 0) {
      print(i);
    }
    i++;
  }
}