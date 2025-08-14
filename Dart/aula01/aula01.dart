import 'dart:io';

void main() {
  // Formas de se criar "variáveis"
  var a = 10; // TIPO NÃO MUDA DEPOIS
  int b = 5; // TIPO DEFINIDO
  //Object c = 'nome'; // FUNÇÕES DE OBJETO
  //dynamic d = 20; // PODE SER ALTERADO O TIPO
  //late double x; //Se nao for usada não consome memória

  print(a + b);
  print(a - b);
  print(a * b);
  print(a / b);
  print(a % b);
  
  print("-"*30);

  // Lista
  List alunos = ["Ana", "Ivo", "Teo"];
  print(alunos);
  print(alunos[1]);

  print('-'*30);

  // String 1° parametro/key | double 2° parametro/value
  Map<String, double> map = {
    "Ana": 10.0,
    "Ivo": 6,
    "Teo": 5.5,
  };
  print(map);
  print(map is Map);
  print(map['Ivo']);
  print(map.length);
  print(map.values);
  print(map.keys);

  print('-'*30);

  // SET Somente valores únicos
  Set<String> sets = {"Ana", "Ivo", "Teo"};

  print(sets);
  print(sets is Set);
  print(sets.length);
  sets.add("Pedro");
  print(sets.length);
  print(sets.contains("Teo"));
  print(sets.first);
  print(sets.last);

  print('-'*30);

  String nome = "UMC";
  String cidade = "Mogi das Cruzes";

  // INTERPOLAÇÃO
  print("$nome $cidade");
  print("1 + 1 = ${1 + 1}");

  print('-'*30);

  String? nome1; // Para variaveis Interrogação para informar que sabe que esta nulo
  print("Boa noite! Digite seu nome: ");
  nome1 = stdin.readLineSync()!; // Para funções Exclamação assume um compromisso para valor não nulo
  print("Boa noite " + nome1);
  print('-'*30);

  double PI = 3.1415;
  double raio;
  double ac;

  print("Digite o raio da circunferência");
  raio = double.parse(stdin.readLineSync()!);

  ac = PI * raio * raio;

  print("Àrea da circunferência: " + ac.toString());

  print('-'*30);

}