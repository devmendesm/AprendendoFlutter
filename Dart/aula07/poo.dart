class Estoque {
  int _quantidade = 50;

  void adicionar(int quantidade){
    if (quantidade > 0) {
      this._quantidade += quantidade;
    } else {
      print("Quantidade inválida!");
    }
  }

  void remover(int quantidade) {
    if (_quantidade > 0 && quantidade <= _quantidade) {
      _quantidade -= quantidade;
    } else if (quantidade > _quantidade) {
      print("Não há quantidade suficiente no estoque ${_quantidade}");
    } else {
      print("Quantidade inválida");
    }
  }

  // Consultar estoque
  int verificar() {
    return _quantidade;
  }
}

void main(){
  var estoque = Estoque();

  print("Estoque inicial: ${estoque.verificar()}");

  estoque.adicionar(20);
  print("Estoque inicial: ${estoque.verificar()}");
  estoque.remover(10);
  print("Estoque inicial: ${estoque.verificar()}");
  estoque.remover(100);
  print("Estoque final ${estoque.verificar()}");

}