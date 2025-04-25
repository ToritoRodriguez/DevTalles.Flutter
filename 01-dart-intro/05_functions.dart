void main() {
  print(greetEveryone());

  print('Suma ${addTwoNumbersArrow(10, 20)}');
  
  print( greatPerson (name: 'Rodrigo', message: 'hi,'));
}

//Con el tipado de datos antes de la funcion lo obligamos a retornar un tipo de datos, sacandole el dynamic
String greetEveryone() {
  return 'Hello everyone';
}

//Forma correcta de usar las arrow functions en flutter
String greetEveryoneArrow() => 'Hello everyone';

//Forma incorrecta de usar las arrow functions en flutter
//String greetEveryoneNotArrow() =>{
//  return 'Hello everyone';
//}

//Para evitar errores a nivel codigo se recomienda indicar el tipado de datos
int addTwoNumbers(int a, int b) {
  return a + b;
}

int addTwoNumbersArrow(int a, int b) => a + b;

//Con llaves cuadradas indicamos el formato opcional del elemento B
//Con [int? ] indicamos que B es opcional
//Con [int b == 3 ] indicamos que si no se envia ningun valor, lo defaulteamos en 3
int addTwoNumbersOptional(int a, [int b = 3 ] ) => a + b;

//Al utilizar las llaves los vuelve de manera automatica en opcionales y los identifica por nombre
//Con required obligamos a que se pase ese dato
String greatPerson( { required String name, String message = 'Hola'} ){
  return '$message $name';
}