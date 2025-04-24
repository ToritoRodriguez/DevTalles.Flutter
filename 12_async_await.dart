void main() async {
  print('Inicio del programa');

  try {
    //Le hago la peticion a esa URL
    final value = await httpGet('https://Rodrigo-Rodriguez.com/Devtalles');
    print(value);
  } catch (err) {
    print('Tenemos un error: $err');
  }

  print('Fin del programa');
}

Future<String> httpGet(String url) async {
  //Transforma los future en lenguaje simple y secuencial
  await Future.delayed(const Duration(seconds: 1));
  return 'Tenemos un valor de la peticion';

  //return 'Respuesta de la peticion HTTP';
}
