void main() {
  var myList = [5, 4, 3, 2, 1];
  print("Lista original: $myList");
  print("O valor do indice 2 é: ${myList[2]}");

  // Altera o valor do indice
  myList[2] = 10;
  print("O valor do indice 2 atualizado é: ${myList[2]}");

  // Insere o 9 na posição 5
  myList.insert(5, 9);
  print("\nLista com inserção: $myList");

  // Insere os valores 11 e 12 apartir do indice 2
  myList.insertAll(2, [11, 12]);
  print("\nLista com inserção multiplos: $myList");

  myList.remove(8);
  print("\Lista depois de remoção: $myList");

  List<int> newList = [];
  print("\nLista vazia: $newList");

  // Adicionar valores
  newList.add(17);
  newList.add(7);
  newList.add(22);
  print("\nLista com valores: $newList");

  newList.addAll([8, 9, 10]);
  print("\nLista: $newList");

  // mixed list
  var mixedList = [1, "dois", 3.0, "quatro", true];
  print("\nListas Mistas: $mixedList");

  mixedList.remove("dois");
  print("\nLista mista valor removido: $mixedList");

  // Remove valor pelo indice
  var myList2 = [1, 2, 3, 4];
  myList2.removeAt(2);
  print("\nLista removido valor: $myList");

  // Remover todos os valores
  myList2.clear();
  print("\nLista após remover todos os valores: $myList2");

  // verificar se lista esta vázia
  print("\nLista vázia? ${myList2.isEmpty}"); // or isNotEmpty

  print("\nTamanho da lista: ${myList.length}");
  
  // Converter lista para string
  var newList2 = newList.toString();
  print("\nLista convertida para string: $newList2.");

  // invert a ordem da lista
  newList = newList.reversed.toList();
  print("\nLista nova invertida: $newList");

  //ordenar lista
  newList.sort();
  print("Lista ordenada: $newList");

  // Ordenar em ordem alfabética
  mixedList = ["João", "Antônio", "Maria", "Eduarda", 4];
  mixedList.sort((a, b) => a.toString().compareTo(b.toString()));
  print("\nLista em ordem alfabética: $mixedList");

  // Filtros na lista
  var filterList = newList.where( (item) => item > 8 ).toList();
  print("Lista nova após ser filtrada: $filterList");

  // Encontrar índice de um valor
  int index = newList.indexOf(8);
  print("\nLista nova: $newList");
  print("Indice do valor 8 na lista nova: $index");
  index = mixedList.indexOf("Victor");
  print("Indice do valor 'Victor' na lista mista: $index");
   index = mixedList.indexOf("Eduarda");
  print("Indice do valor 'Eduarda' na lista mista: $index");
}