void main(){
  
  
  final windPlant = WindPlant( initialEnergy: 100);
  final nuclearPlant = NuclearPlant( energyLeft: 1000 );
  
  print('wind: ${chargePhone(windPlant)}');
  print('nuclear: ${chargePhone(nuclearPlant)}');

}

double chargePhone (EnergyPlant plant){
  if(plant.energyLeft < 10){
    throw Exception ('Not enough energy');
  }
  
  return plant.energyLeft -10;
}


//Hacemos un listado de los tipos de plantas que tendremos disponibles
enum PlantType {
  nuclear,
  wind,
  water
}


//Definicion de la clase abstracta a utilizar
abstract class EnergyPlant {
  
  //
  double energyLeft;
  final PlantType type; //Tipos de planta, nuclear, wind or water
  
  EnergyPlant({ 
    required this.energyLeft, 
    required this.type
  });
  
  //Simplemente estoy instanciando sin implementarlo
  //void consumeEnergy ( double amount );
  
  void consumeEnergy ( double amount );
}

//Extends o Implements

//Extends, heredo el constructor, los tipos de datos y sus metodos
//de la clase abstracta
class WindPlant extends EnergyPlant{
  WindPlant({required double initialEnergy})
    : super( energyLeft: initialEnergy, type: PlantType.wind );
  
  //Dejamos declarado que estamos sobreescribiendo el metodo que utilizamos
  @override
  void consumeEnergy( double amount){
    energyLeft -= amount;
  }
}


//Implements
class NuclearPlant implements EnergyPlant{
  
  @override
  double energyLeft;
  
  @override
  final PlantType type = PlantType.nuclear; //Tipos de planta, nuclear, wind or water
  
    NuclearPlant({ required this.energyLeft });
  
    @override
    void consumeEnergy( double amount){
      energyLeft -= (amount * 0.5);
    }
}