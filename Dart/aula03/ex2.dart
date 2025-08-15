import 'dart:io';

void main() {

  int inicio = 1;
  int fim = 100;
  while(inicio <= fim) {
    stdout.write("$inicio, ");
    inicio++;
  }

  print("FIM.");
}