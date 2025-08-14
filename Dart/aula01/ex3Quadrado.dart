import 'dart:io';

void main() {

  print("Digite um número: ");
  int n = int.parse(stdin.readLineSync()!);

  print("O quadrado desse número é: ${n * n}");
}