void main (){
  
  final Hero wolverine = Hero(name: 'Logan', power: 'Regeneracion');
  
  print( wolverine );
  print( wolverine.name);
  print( wolverine.power);
}

//Tengo que inicializar los elementos de mi clase
//Se recomienda inicializar las variables o ponerlas opcional para evitar el null
class Hero {
  
  String name;
  String power;
  
  //Forma mas practica de instanciar el constructor
  Hero ({
    required this.name,
    this.power = 'Sin poder',
    });
  
  //Constructor
  //Hero( String pName, String pPower )   //{
    //El this es opcional en este caso,     directamente podemos utilizar el       name o power
    //this.name = pName;
    //this.power = pPower;
  //}
  
  //Otra forma de hacer el constructor
  //Hero ( String pName, String pPower)
  //  : name = pName,
  //    power = pPower
  
  //Sobreescribo el comportamiento nativo, es recomendado indicarlo cuando se vaya a sobreescribir algo
  @override
  String toString(){
    return 'Custom Message';
  }
}