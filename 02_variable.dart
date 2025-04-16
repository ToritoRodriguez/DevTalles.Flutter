void main() {
  final String pokemon = 'Ditto';
  final int hp = 100;
  final bool isAlive = true;
  final List<String> abilities = ["Impostor"];
  final List<String> sprites = ['Ditto/front.png','ditto/back.png'];

  //Dynamic, Puede ser cualquier dato, se usa como un comodin. Puede ser Nulo y acepta Nulo
  dynamic errorMessage = 'Hola';
  errorMessage= true;
  errorMessage= [1,2,3,4,5];
  errorMessage ={1,2,3,4,5};
  errorMessage = () => true;
  errorMessage = null;
  
  print("""
  $pokemon
  $hp
  $isAlive
  $abilities
  $sprites
  $errorMessage
   """);
}
