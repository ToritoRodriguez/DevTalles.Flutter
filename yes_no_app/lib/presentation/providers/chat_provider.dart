import 'package:flutter/material.dart';
import 'package:yes_no_app/config/helpers/get_yes_no_answer.dart';
import 'package:yes_no_app/domain/entities/message.dart';


// ChangeNotifier es una clase que notifica a sus oyentes cuando su estado cambia
class ChatProvider extends ChangeNotifier{

  final ScrollController chatScrollController = ScrollController(); // El controlador de desplazamiento se utiliza para controlar el desplazamiento de la lista de mensajes
  final GetYesNoAnswer getYesNoAnswer = GetYesNoAnswer();

  List<Message> messageList = [];

  //Methods
  Future<void> sendMessage( String text ) async {

    if (text.isEmpty) return; // Si el texto está vacío, no hacemos nada
    final newMessage = Message(text: text, fromWho: FromWho.me);
    messageList.add(newMessage);

    if( text.endsWith('?')){
      await herReply(); // Si el mensaje termina con '?', llama a la función herReply
    }

    notifyListeners(); // Notifica a los oyentes que el estado ha cambiado
    moveScrllToBottom(); // Desplaza la lista hacia abajo para mostrar el nuevo mensaje
  }

  Future<void> herReply() async {

    final herMessage = await getYesNoAnswer.getAnswer(); // Llama a la API para obtener una respuesta

    messageList.add(herMessage); // Agrega el mensaje de la API a la lista de mensajes
    notifyListeners(); // Notifica a los oyentes que el estado ha cambiado
    moveScrllToBottom(); // Desplaza la lista hacia abajo para mostrar el nuevo mensaje
  }

  Future<void> moveScrllToBottom() async {

    await Future.delayed( const Duration(milliseconds: 100) ); // Espera 300 milisegundos antes de desplazarse

    chatScrollController.animateTo(
      chatScrollController.position.maxScrollExtent, // Desplazamiento de la lista, el .position.maxScrollExtent es la posición máxima del desplazamiento
      duration: const Duration( milliseconds: 300 ), // Duración de la animación
      curve: Curves.easeOut //Animación de desplazamiento
    );
  }
}