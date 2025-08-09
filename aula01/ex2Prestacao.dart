import 'dart:io';

void main() {
  double? valor;
  double? taxa = 2;
  double? tempo = 5;

  print("Digite o valor: ");
  valor = double.parse(stdin.readLineSync()!);

  double resultado = valor + (valor * (taxa / 100) * tempo);

  print("Resultado: $resultado");
}
