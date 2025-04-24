void main() async {
  print('Inicio del programa');

  try {
    //Le hago la peticion a esa URL
    final value = await httpGet('https://Rodrigo-Rodriguez.com/Devtalles');
    print(' Exito: $value');
  } on Exception catch(err) {
    print('Tenemos una exepcion: $err');
  } catch (err) {
    print('Fallo, tenemos un error: $err');
  } finally {
    print('Fin del try and catch');
  }

  print('Fin del programa');
}

Future<String> httpGet(String url) async {
  //Transforma los future en lenguaje simple y secuencial
  await Future.delayed(const Duration(seconds: 1));

  throw Exception('No hay paramemtros en la URL');

  //return 'Tenemos un valor de la peticion';
  //return 'Respuesta de la peticion HTTP';
}
