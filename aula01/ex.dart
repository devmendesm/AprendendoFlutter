import 'dart:io';

void main() {
  double a;
  double b;

  print("Digite o valor de A:");
  a = double.parse(stdin.readLineSync()!);
  print("Digite o valor de B:");
  b = double.parse(stdin.readLineSync()!);

  print("Resultado da soma de $a + $b: ${a + b}");
}