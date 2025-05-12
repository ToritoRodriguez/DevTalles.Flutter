import 'package:flutter/material.dart';
import 'package:toktik/presentation/widgets/video/vide_background.dart';
import 'package:video_player/video_player.dart';

class FullscreenPlayer extends StatefulWidget {

  final String videoUrl;
  final String caption;

  const FullscreenPlayer({
    super.key, 
    required this.videoUrl, 
    required this.caption
  });

  @override
  State<FullscreenPlayer> createState() => _FullscreenPlayerState();
}

class _FullscreenPlayerState extends State<FullscreenPlayer> {

  late VideoPlayerController controller;

  // Inicializa el controlador de video
  @override
  void initState() {
    super.initState(); // El initState siempre al comienzo para indicar el ciclo de vida del widget

    controller = VideoPlayerController.asset( widget.videoUrl ) // Utilizo los operadores en cascada para evitar el uso de this
      ..setVolume(0.0) // Muteamos el video
      ..setLooping(true) // Repetimos el video
      ..play(); // Reproducimos el video

  }

  // El dispose se llama cuando el widget se elimina del árbol de widgets
  // Aquí liberamos los recursos del controlador de video
  // y cualquier otro recurso que hayamos utilizado
  @override
  void dispose() {
    controller.dispose(); // Liberamos el controlador de video
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return FutureBuilder(
      future: controller.initialize(), 
      builder: (context, snapshot) {

        if( snapshot.connectionState != ConnectionState.done ){
          return const Center(
            child: CircularProgressIndicator( strokeWidth: 2 ),
          );
        }

        return GestureDetector( // El widget GestureDetector nos permite detectar gestos en la pantalla
          // Al hacer tap en el video, se reproduce o pausa
          // dependiendo del estado actual del video

          onTap: () {
            if( controller.value.isPlaying ){
              controller.pause(); // Pausamos el video
            }
            controller.play(); // Reproducimos el video
          },

          child: AspectRatio(
            aspectRatio: controller.value.aspectRatio, // Nos da la relación de aspecto del video
            child: Stack(
              children: [
                VideoPlayer(controller), // Reproductor de video
          
                //Gradiente de fondo
                VideBackground(
                  stops: [0.8 , 1.0]
                ),

                //Texto del caption
                Positioned(
                  bottom: 50,
                  left: 20,
                  child: _VideoCaption(
                    caption: widget.caption
                  )
                )
              ]
            )
          ),
        );

      },
    );
  }
}

class _VideoCaption extends StatelessWidget {

  final String caption;

  const _VideoCaption({
    required this.caption
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final titleStyle = Theme.of(context).textTheme.titleLarge; // Obtenemos el estilo del tema actual

    return SizedBox(
      width: size.width * 0.6,
      child: Text(
        caption,
        maxLines: 2,
        style: titleStyle,
      ),
    );
  }
}