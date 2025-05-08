import 'package:flutter/material.dart';
import 'package:yes_no_app/domain/entities/message.dart';

class HerMessageBubble extends StatelessWidget {
  final Message message;

  const HerMessageBubble({
    super.key, 
    required this.message
  });

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

          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
            child: Text(
              message.text,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          )
        ),

        const SizedBox(height: 5.0),

        _ImageBubble(message.imageUrl!),

        SizedBox(height: 10.0),
      ],
    );
  }
}

class _ImageBubble extends StatelessWidget {
  final String imageUrl;

  const _ImageBubble( this.imageUrl );

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size; // Toma el tamaño de la pantalla

    return ClipRRect( // El ClipRRect recorta el widget hijo a la forma del rectángulo que se le pasa
      borderRadius: BorderRadius.circular(20),
      child: Image.network(
        imageUrl,
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