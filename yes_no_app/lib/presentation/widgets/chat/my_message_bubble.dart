import 'package:flutter/material.dart';
import 'package:yes_no_app/domain/entities/message.dart';

class MyMessageBubble extends StatelessWidget {
  
  final Message message;

  const MyMessageBubble({
    super.key, 
    required this.message
  });

  @override
  Widget build(BuildContext context) {

    final colors= Theme.of(context).colorScheme;// Toma el tema actual de la aplicación

    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          decoration: BoxDecoration(
            color: colors.primary,
            borderRadius: BorderRadius.circular(20),
          ),

          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
            child: Text(
              message.text,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          )
        ),

        const SizedBox(height: 5),
      ],
    );
  }
}