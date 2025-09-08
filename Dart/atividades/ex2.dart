import 'dart:io';
import 'dart:math';

void main() {

  while (true) {
    print('''\n=== Calculadora ===
      1 - Soma de vários números
      2 - Subtração sequencial
      3 - Multiplicação de vários números
      4 - Divisão entre dois números
      5 - Potência
      6 - Sair
      Escolha uma opção:''');

    String? input = stdin.readLineSync();
    if (input == null) continue;

    switch (input) {
      case '1':
        soma();
        break;
      case '2':
        subtracao();
        break;
      case '3':
        multiplicacao();
        break;
      case '4':
        divisao();
        break;
      case '5':
        potencia();
        break;
      case '6':
        print('Encerrando programa...');
        return;
      default:
        print('Opção inválida, tente novamente!');
    }
  }
}

double? lerNumero(String mensagem) {
  while (true) {
    stdout.write(mensagem);
    String? entrada = stdin.readLineSync();
    
    if (entrada == null) continue;
    double? valor = double.tryParse(entrada);
    if (valor == null) {
      print('Entrada inválida, por favor digite um número válido.');
    } else {
      return valor;
    }
  }
}

int lerInteiroPositivo(String mensagem) {
  while (true) {
    stdout.write(mensagem);
    String? entrada = stdin.readLineSync();

    if (entrada == null) continue;
    int? valor = int.tryParse(entrada);
    if (valor == null || valor <= 0) {
      print('Por favor, digite um número inteiro positivo.');
    } else {
      return valor; 
    }
  }
}

void soma() {
  int m = lerInteiroPositivo('Quantos números deseja somar? ');
  double soma = 0;

  for (int i = 1; i <= m; i++) {
    double num = lerNumero('Digite o número $i: ')!;
    soma += num;
  }

  print('Resultado da soma: $soma');
}

void subtracao() {
  int n = lerInteiroPositivo('Quantos números deseja subtrair? ');

  if (n == 0) {
    print('Nenhum número para subtrair.');
    return;
  }
  double resultado = lerNumero('Digite o número 1: ')!;

  for (int i = 2; i <= n; i++) {
    double num = lerNumero('Digite o número $i: ')!;
    resultado -= num;
  }

  print('Resultado da subtração sequencial: $resultado');
}

void multiplicacao() {
  int m = lerInteiroPositivo('Quantos números deseja multiplicar? ');
  double produto = 1;
  bool temZero = false;

  for (int i = 1; i <= m; i++) {
    double num = lerNumero('Digite o número $i: ')!;
    if (num == 0) temZero = true;
    produto *= num;
  }

  if (temZero) {
    print('O produto é 0 pois pelo menos um número digitado é zero.');
  } else {
    print('Resultado da multiplicação: $produto');
  }
}

void divisao() {
  double a = lerNumero('Digite o dividendo (a): ')!;
  double b;

  while (true) {
    b = lerNumero('Digite o divisor (b): ')!;
    if (b == 0) {
      print('Não é possível dividir por zero. Digite outro valor para b.');
    } else {
      break;
    }
  }

  double resultado = a / b;
  print('Resultado da divisão: $resultado');
}

void potencia() {
  double base = lerNumero('Digite a base: ')!;
  double expoente = lerNumero('Digite o expoente: ')!;
  double resultado = pow(base, expoente).toDouble();

  print('$base elevado a $expoente é $resultado');
}
