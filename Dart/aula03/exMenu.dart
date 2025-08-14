import 'dart:io';

void main() {
  // Variáveis de controle
  int tentativas = 0;
  bool sair = false;
  int maxTentativas = 3;

  while (tentativas < maxTentativas && sair == false) {
    print('\n<<<<<<< Menu de Opções >>>>>>>');
    print("1 - Exibir uma mensagem");
    print("2 - Contar até 10");
    print("3 - Sair do programa");
    print('-------------------------');
    stdout.write("Digite a opção desejada: ");
    
    String entrada = stdin.readLineSync()!.trim();
    int? opcao;

    if (entrada == '') {
      opcao = 0;
    } else {
      opcao = int.parse(entrada ?? '');
    }

    switch (opcao) {
      case 1:
        print("\nParabens sua mensagem!");
        break;
      case 2:
        for (int i = 1; i <= 10; i++) {
          print(i);
        }
        break;
      case 3:
        print("\nSaindo...");
        sair = true;
        break;
      default:
        tentativas++;
        if (tentativas < maxTentativas) {
          print("\nOpção Inválida. ${tentativas}° tentativa de ${maxTentativas}");
        } else {
          print("Limite atingido.\nSaindo do programa...");
          sair = true;
        }
        break;
    }
  }
  print("Foi um prazer. Até a próxima!");
}
