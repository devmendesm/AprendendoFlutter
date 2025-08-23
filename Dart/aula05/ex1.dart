import 'dart:io';

void main() {
  Map<String, double> alunos = {};

  double nota;
  String nome;

  bool sair = false;

  while(sair == false) {
    print("------ Alunos e Notas ------");
    stdout.write("Nome: ");
    nome = stdin.readLineSync()!;
    stdout.write("Nota do $nome: ");
    nota = double.parse(stdin.readLineSync()!);
    alunos[nome] = nota;

    stdout.write("Deseja continuar (S/N)? ");
    String flag = stdin.readLineSync()!.toUpperCase();
    sair = flag == "S" ? false : true; 
  }
  print("");

  var menor = alunos.entries.reduce((a, b) => a.value < b.value ? a : b);
  var maior = alunos.entries.reduce((a, b) => a.value > b.value ? a : b);
  var total = alunos.values.reduce((a, b) =>  a + b);
  double media = total  / alunos.length; 

  print("------ Alunos | Notas ------");
  alunos.forEach((nome, nota){
    print("$nome | $nota");
  });

  print("\nMenor nota: ${menor.key} ${menor.value} \nMaior nota: ${maior.key} ${maior.value} \nMédia das notas: ${media.toStringAsFixed(2)}");
}