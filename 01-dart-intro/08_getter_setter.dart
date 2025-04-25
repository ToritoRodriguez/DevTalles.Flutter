void main(){
  
  final mySquare = Square ( side: -10);
  
  print ( 'Area: ${mySquare.calculateArea()}' );
  
}

class Square{
  
  //Con el guion bajo lo hacemos una propiedad privada
  double _side; // Side * Side
  
  
  Square({required double side})
    : assert(side >= 0, 'Side must be >= 0'), // Si esta asercion no se cumple no se siguen ejecutando las siguientes lineas
  //Para identificar mas rapido la asercion le podemos adicionar el mensaje de error como segundo valor
      _side = side;
  
  //Esto es un getter
  double get area{
    return _side * _side;
  }
  
  set side( double value){
    print('Setting nwe value $value');
    if (value < 0) throw 'Value must be >0'; 
    
    _side = value;
  }
  
  double calculateArea(){
    return _side * _side;
  }
}