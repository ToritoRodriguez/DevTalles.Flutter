import 'package:flutter/material.dart';

class MessageFieldBox extends StatelessWidget {
  const MessageFieldBox({super.key});

  @override
  Widget build(BuildContext context) {

    final textControler =  TextEditingController();// Es un controlador de texto que se utiliza para controlar el texto que se muestra en el campo de texto
    final focusNode = FocusNode(); // Es un nodo de enfoque que se utiliza para controlar el enfoque del campo de texto

    final outlineInputBorder = UnderlineInputBorder(
      borderSide: const BorderSide( color: Colors.transparent),
      borderRadius: BorderRadius.circular(40),
    );

    final inputDecoration = InputDecoration(
      hintText: 'End your message with a "?"',
      enabledBorder: outlineInputBorder,
      focusedBorder: outlineInputBorder,

      filled: true,
      suffixIcon: IconButton(
        icon: const Icon(Icons.send),
        onPressed: () {
          final textValue = textControler.value.text;
          print('button: $textValue');
          textControler.clear();
        }
      ),
    );

    return TextFormField(
      onTapOutside: (event) {
        focusNode.unfocus(); // Desenfoca el campo de texto al tocar fuera de él
      },

      focusNode: focusNode,
      controller: textControler,

      decoration: inputDecoration,
      onFieldSubmitted: (value) {
        textControler.clear();// Limpia el campo de texto
        focusNode.requestFocus();// Pone el foco en el campo de texto
      },
    );
  }
}