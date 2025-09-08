import 'dart:io';

class Produto {
  String? nome;
  double? preco;
  int? quantidade;

  Produto(this.nome, this.preco, this.quantidade);

  // Método de calcular valor total
  double? valorTotal() {
    final precoVar = preco;
    final quantidadeVar = quantidade;

    if (precoVar != null && quantidadeVar != null) {
      return precoVar * quantidadeVar;
    }
    return null;
  }

  void aplicarDesconto(double percentual) {
    double valor = percentual / 100;
    if (preco != null) {
      preco = preco! - (preco! * valor);
    }
  }
}

void main() {
  var obj1 = new Produto('mouse', 100, 2);
  var obj2 = new Produto('monitor', 500, 1);
  var obj3 = new Produto('cpu', 1200, 3);
  List<dynamic> lista = [obj1, obj2, obj3];

  for (var i in lista) {
    print("\nNome: ${i.nome}");
    print("Preço: ${i.preco}");
    print("Quantidade: ${i.quantidade}");
  }

  print("----------------------");

  for (var i in lista) {
    i.aplicarDesconto(10.0);

    print("Nome: ${i.nome}");
    print("Preço: ${i.preco}");
    print("Quantidade: ${i.quantidade}");
  }

  for (var i in lista) {
    i.aplicarDesconto(10.0);

    print("Nome: ${i.nome}");
    print("Preço: ${i.preco}");
    print("Quantidade: ${i.quantidade}");

    print("\nValor total do estoque: ${i.valorTotal()}");
  }
}
