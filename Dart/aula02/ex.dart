import 'dart:io';

void main() {
  print("Digite um número: ");

  int numero = int.parse(stdin.readLineSync()!);
  
  String resultado;

  if (numero > 0) resultado = "Positivo";
  else if (numero < 0) resultado = "Negativo";
  else resultado = "Zero";

  print("O número $numero é: $resultado");
}