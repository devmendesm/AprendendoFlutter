import 'dart:io';

void main() {
  stdout.write("Digite o 1° número: ");
  int n1 = int.parse(stdin.readLineSync()!);

  stdout.write("Digite o 2° número: ");
  int n2 = int.parse(stdin.readLineSync()!);

  stdout.write("Digite o 3° número: ");
  int n3 = int.parse(stdin.readLineSync()!);

  int maior, menor, meio;
  if (n1 >= n2 && n1 >= n3) {
    maior = n1;

    if (n2 >= n3){
      meio = n2;
      menor = n3;
    } else {
      meio = n3;
      menor = n2;
    }
  } else if (n2 >= n1 && n2 >= n3) {
    maior = n2;

    if (n1 >= n3) {
      meio = n1;
      menor = n3;
    } else {
      meio = n3;
      menor = n1;
    }
  } else {
    maior = n3;
    
    if (n1 >= n2) {
      meio = n1;
      menor = n2;
    } else {
      meio = n2;
      menor = n1;
    }
  }

  print("Ordem crescente: $menor - $meio - $maior");


}