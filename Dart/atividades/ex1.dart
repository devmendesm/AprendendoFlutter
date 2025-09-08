import 'dart:io';

class Calculos {
  int? maior(List<int> lista) {
    if (lista.isEmpty) return null;

    int maior = lista[0];
    for (int n in lista) {
      if (n > maior) {
        maior = n;
      }
    }
    return maior;
  }

  int? menorValor(List<int> lista) {
    if (lista.isEmpty) return null;

    int menor = lista[0];
    for (int n in lista) {
      if (n < menor) {
        menor = n;
      }
    }
    return menor;
  }

  int? soma(List<int> lista) {
    if (lista.isEmpty) return null;

    int total = 0;
    for (int n in lista) {
      total += n;
    }
    return total;
  }

  double? media(List<int> lista) {
    if (lista.isEmpty) return null;

    int total = 0;
    for (int n in lista) {
      total += n;
    }
    double resultado = total / lista.length;
    return double.parse(resultado.toStringAsFixed(2));
  }

  Map<String, int> contarParesImpares(List<int> lista) {
    int pares = 0;
    int impares = 0;

    for (int n in lista) {
      if (n % 2 == 0)
        pares++;
      else
        impares++;
    }

    return {"Pares": pares, "impares": impares};
  }
}

void main() {
  List<int> lista = [];
  var calculos = Calculos();

  bool finalizar = false;

  while (!finalizar) {
    stdout.write("Digite um número: ");
    String? entrada = stdin.readLineSync()!.trim();
    int? n = int.tryParse(entrada ?? "");

    if (n != null) {
      lista.add(n);
      if (n >= 10) {
        finalizar = true;
      }
    }
  }
  print("Lista final $lista");

  print("Maior valor: ${calculos.maior(lista)}");
  print("Menor valor: ${calculos.menorValor(lista)}");
  print("Média: ${calculos.media(lista)}");
  print("Pares e Impares: ${calculos.contarParesImpares(lista)}");
}
