abstract class Animal{

}

//Caracteristicas de los mamiferos
abstract class Mamifero extends Animal{
  
}


//Caracteristicas de las aves
abstract class Ave extends Animal{
  
}

//Caracteristicas de los Peces
abstract class Pez extends Animal{
  
}

//Los mixins son especializaciones
mixin Volador{
  void volar() =>print('Estoy volando');
}

mixin Caminante{
  void caminar() =>print('Estoy caminando');
}

mixin Nadador{
  void nadar() =>print('Estoy nadando');
}

//Con el with puedo utilizar los mixins
class Delfin extends Mamifero with Nadador{
  
}

//Con la , separo los tipos
class Murcielago extends Mamifero with Volador, Caminante{
  
}

class Gato extends Mamifero with Caminante{
  
}

class Paloma extends Ave with Volador,Caminante{
  
}

class Pato extends Ave with Volador,Caminante{
  
}

class Tiburon extends Pez with Nadador{
  
}

class PezVolador extends Pez with Nadador,Volador{
  
}

void main(){
  
  final flipper = Delfin();
  flipper.nadar();
  
  final batman = Murcielago();
  batman.caminar();
  batman.volar();
}