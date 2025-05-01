import 'package:flutter/material.dart';
import 'package:hello_word_app/presentation/screens/counter/counter_functions_screen.dart';
//import 'package:hello_word_app/presentation/screens/counter/counter_screen.dart';

void main(){

runApp(const MyApp());

}

// StatelessWidget es un widget que no puede cambiar su estado
class MyApp extends StatelessWidget {

  //Creamos el KeyConstructor para el widget
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    //Adicionando el const a la clase MaterialApp se optimiza el rendimiento
    //El const permite que el widget no se vuelva a construir si no hay cambios en el mismo
    return MaterialApp(
      debugShowCheckedModeBanner: false, //Elimina la etiqueta de debug en la app

      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.blue,
      ),
      
      //El home es la pantalla principal de la app
      //Con el scaffold podemos definir pantallas, temas, etc.
      home: CounterFunctionsScreen()
    );
  }

}