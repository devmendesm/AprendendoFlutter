import 'dart:io';

void main() {
  stdout.write("Digite o ano Ex.(2025): "); // Escrita na frente da pergunta

  int ano = int.parse(stdin.readLineSync()!);

  String resultado = ((ano % 4 == 0) && (ano % 100 != 0) || (ano % 400 == 0)) ? "Bissexto" : "Normal";

  print("O ano $ano é: $resultado");
}