import 'dart:math' show Random;
import 'package:flutter/material.dart';

class AnimatedScreen extends StatefulWidget {

  static const String name = 'animated-screen';

  const AnimatedScreen({super.key});

  @override
  State<AnimatedScreen> createState() => _AnimatedScreenState();
}

class _AnimatedScreenState extends State<AnimatedScreen> {

  double _width = 50;
  double _height = 50;
  Color _color = Colors.blue;
  double _borderRadius = 10;

  void changeShape(){

    final random = Random();

      _width = random.nextInt(300) + 120;
      _height = random.nextInt(300) + 120;
      _color = Color.fromRGBO(
        random.nextInt(255), // Red
        random.nextInt(255), // Green
        random.nextInt(255), // Blue
        1 // Opacity
      );
      _borderRadius = random.nextInt(100).toDouble();

    setState(() {
      
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Screen'),
      ),
      
      body: Center(
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 400),
          curve: Curves.easeInCubic,
          width: _width <= 0 ? 0 : _width,
          height: _height  <= 0 ? 0 : _height,
          decoration: BoxDecoration(
            color: _color,
            borderRadius: BorderRadius.circular(_borderRadius),
          ),
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          changeShape();
        },

        child: const Icon(Icons.play_arrow),
      ),
    );  
  }
}