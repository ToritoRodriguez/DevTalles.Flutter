import 'package:flutter/material.dart';

class MyMessageBubble extends StatelessWidget {
  const MyMessageBubble({super.key});

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

          child: const Padding(
            padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
            child: Text(
              'Laboris duis dolore',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          )
        ),

        const SizedBox(height: 10.0),
      ],
    );
  }
}