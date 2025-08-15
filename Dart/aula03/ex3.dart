import 'dart:io';

void main() {
  int par = 0;

  do {
    if (par % 2 == 0) {
      stdout.write("$par, ");
    }
      par++;
  } while (par <= 20);

  print("FIM.");
}