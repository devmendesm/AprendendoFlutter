import 'dart:io';

void main() {
  Map<String, Map<String, dynamic>> clientes = {};

  bool sair = false;

  while(sair == false){
    print("\n--- Sistema de Gestão de Clientes ---");
    print("1. Adicionar cliente");
    print("2. Atualizar pedidos de cliente");
    print("3. Remover cliente");
    print("4. Consultar pedidos de cliente");
    print("0. Sair");

    stdout.write("Escolha a opção desejada: ");
    String opcao = stdin.readLineSync()!;

    switch(opcao){
      case "1":
        stdout.write("Nome: ");
        String nome = stdin.readLineSync()!;
        stdout.write("Idade: ");
        int idade = int.parse(stdin.readLineSync()!);
        stdout.write("Número de pedidos: ");
        int pedidos = int.parse(stdin.readLineSync()!);

        clientes[nome] = {"idade": idade, "pedidos": pedidos};
        print("Cliente $nome adicionado com sucesso!");
        break;
      case "2":
        stdout.write("Nome do cliente: ");
        String nome = stdin.readLineSync()!;
        if (clientes.containsKey(nome)) {
          stdout.write("Novo número de pedidos: ");
          int pedidos = int.parse(stdin.readLineSync()!);
          clientes[nome]!["pedidos"] = pedidos;
          print("Número de pedidos de $nome atualizados com sucesso!");
        } else {
          print("Cliente não foi encontrado!");
        }
        break;
    }
  }
}