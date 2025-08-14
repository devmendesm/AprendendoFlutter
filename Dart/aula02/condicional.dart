import 'dart:io';

void main() {
  // Condicional simples
  int numero;

  print("Digite um número: ");
  numero = int.parse(stdin.readLineSync()!);
  
  if (numero > 10) {
    print("$numero é maior que 10");
  } else {
    print("$numero é menor que 10");
  }

  // Ternário
  print('-' * 30);
  int ternario;
  
  print("Digite um número: ");

  ternario = int.parse(stdin.readLineSync()!);
  
  String resultado = (ternario % 2 == 0) ? "par" : "impar";

  print("O número $ternario é: $resultado");

  // Switch/Case
  stdout.write("Digite um número: ");
  int n = int.parse(stdin.readLineSync()!);

  switch (n) {
    case (1):
      print("Número digitado foi 1");
      break;
    case (2):
      print("Número digitado foi 1");
      break;
    default:
      print("Desconhecido.");
      break;
  }

}