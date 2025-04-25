void main() {
  final numbers = [1, 2, 3, 4, 5, 5, 5, 6, 7, 8, 9, 9, 10];

  print('List original: $numbers');
  print('List lenght: ${numbers.length}');
  print('Index 0: ${numbers[0]}');
  print('First: ${numbers.first}');
  print('Reverse: ${numbers.reversed}');

  final reversedNumbers =
      numbers
          .reversed; //Pasa a ser un iterable, Es una coleccion de elementos que se puede leer de na manera secuencial. Es un objeto que puede contar elementos que se encuentren dentro de el como listas, sets, arreglos, etc

// Un iterable no es lo mismo que una lista
  print('Iterable: $reversedNumbers');
  print('List: ${reversedNumbers.toList()}');
  
  print('set: ${ reversedNumbers.toSet() }'); //El set no devuelve los duplicados
  
  
  // Evalua cada elemento dentro del listado
  final numberGreaterThan5 = numbers.where( (num){
    return num >5;
  }); //Where es un metodo que tienen los listados que permite insertar ciertos tipos de filtos
  
  print('>Number Greater Than 5: $numberGreaterThan5');
}
