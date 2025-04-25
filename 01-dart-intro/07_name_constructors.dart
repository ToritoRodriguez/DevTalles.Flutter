void main() {
  final Map<String, dynamic> rawJson = {
    'isAlive': false,
    'name': 'Mark Stark',
    'power': 'money',
  };

  final ironman = Hero.fromJson(rawJson);

  // final ironman = Hero(
  //   //Al usar el mapa para pasar un valor, existe la posibilidad de que este sea nulo, se recomienda hacer lo de abajo
  //   isAlive: rawJson['isAlive2']?? false,
  //   name: 'Tony Stark',
  //   power: 'money'
  // );

  print(ironman);
}

class Hero {
  String name;
  String power;
  bool isAlive;

  Hero({required this.name, required this.power, required this.isAlive});

  //Recomienda siempre hacer la validacion para evitar el null
  Hero.fromJson(Map<String, dynamic> json)
    : name = json['name'] ?? 'No name found',
      power = json['[power]'] ?? 'No power found',
      isAlive = json['isAlive'] ?? 'No isAlive found';

  @override
  String toString() {
    return '$name, $power, isAlive: ${isAlive ? 'Yes' : 'Nop'}';
  }
}
