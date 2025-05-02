import 'package:flutter/material.dart';

class HerMessageBubble extends StatelessWidget {
  const HerMessageBubble({super.key});

  @override
  Widget build(BuildContext context) {

    final colors= Theme.of(context).colorScheme;// Toma el tema actual de la aplicación

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        Container(
          decoration: BoxDecoration(
            color: colors.secondary,
            borderRadius: BorderRadius.circular(20),
          ),

          child: const Padding(
            padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
            child: Text(
              'Hola mundo',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          )
        ),

        const SizedBox(height: 5.0),

        _ImageBubble(),

        SizedBox(height: 10.0),

        //TODO: Imagen
      ],
    );
  }
}

class _ImageBubble extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size; // Toma el tamaño de la pantalla

    return ClipRRect( // El ClipRRect recorta el widget hijo a la forma del rectángulo que se le pasa
      borderRadius: BorderRadius.circular(20),
      child: Image.network(
        'https://yesno.wtf/assets/no/23-5fe6c1ca6c78e7bf9a7cf43e406fb8db.gif',
        width: size.width * 0.7, // Toma el 70% del ancho de la pantalla
        height: 150,
        fit: BoxFit.cover, // Ajusta la imagen al tamaño del contenedor
        loadingBuilder: (context, child, loadingProgress) { // Muestra un widget mientras se carga la imagen
          if (loadingProgress == null) return child; // Si no hay progreso de carga, devuelve el hijo

          return Container(
            width: size.width * 0.7,
            height: 150,
            padding: const EdgeInsets.symmetric(
              vertical: 5.0,
              horizontal: 10.0,
            ),
            child: Text('Tallares esta enviando una imagen...'),
          );
        },
      ),
    );
  }
}