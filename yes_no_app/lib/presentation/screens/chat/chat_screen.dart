import 'package:flutter/material.dart';
import 'package:yes_no_app/presentation/widgets/chat/her_message_bubble.dart';
import 'package:yes_no_app/presentation/widgets/chat/my_message_bubble.dart';
import 'package:yes_no_app/presentation/widgets/shared/message_field_box.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
              'https://i.imgur.com/7BkXvXd.png'
            ),
          ),
        ),
        title: Text('Talleres de Cordoba'),
        //centerTitle: true, // Centramos el título
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    // No olvidar que para envolver un widget dentro de otro me debo posicionar sobre el widget y presionar Ctrl + Punto
    return SafeArea(// El safe area evita que el contenido se superponga a la barra de estado superior y en el inferior
      child: Padding(// El padding es el espacio entre el contenido y los bordes de la pantalla
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          children:[

            Expanded(child: ListView.builder( // El expanded ocupa todo el espacio disponible
              itemCount: 100,
              itemBuilder: (context, index) {
                
                return( index % 2 == 0 // Si el índice es par, muestra el mensaje de mi amigo
                  ? const HerMessageBubble()
                  : const MyMessageBubble()
                );
              },  
            )),
            

            //! Caja de mensaje
            const MessageFieldBox(),
          ],
        ),
      ),
    );
  }
}