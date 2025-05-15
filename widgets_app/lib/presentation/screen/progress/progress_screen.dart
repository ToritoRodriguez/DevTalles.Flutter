import 'package:flutter/material.dart';

class ProgressScreen extends StatelessWidget {

  static const String name = 'progress-screen';

  const ProgressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Progress Indicators'),

      ),
      body: _ProgressView(),
    );
  }
}

class _ProgressView extends StatelessWidget {
  const _ProgressView();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SizedBox( height: 30 ),
          Text('Circular Progress Indicator'),
          SizedBox( height: 10 ),
          CircularProgressIndicator(
            strokeWidth: 2,
            backgroundColor: Colors.black45,
          ),

          SizedBox( height: 30 ),
          Text('Circular y Linear Progress Indicator controlado'),
          SizedBox( height: 10 ),
          _ControllerProgressIndicator(),

          SizedBox( height: 30 ),
          Text('Linear Progress Indicator'),
          SizedBox( height: 10 ),
        ],
      ),
    );
  }
}

class _ControllerProgressIndicator extends StatelessWidget {
  const _ControllerProgressIndicator();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(// Se construye en tiempo de ejecución
      stream: Stream.periodic(const Duration(milliseconds: 300), (value){ // Se ejecuta cada 300ms hasta que cancelemos el stream
                                                                          // Si el valor es 100, se cancela el stream   
                                                                          // Cada vez que se ejecuta el stream, se incrementa el valor en 1
        return (value * 2) / 100; 
      }).takeWhile((value) => value < 100), // Se ejecuta hasta que el valor sea menor a 100

      builder: (context, snapshot) {

        final progressValue = snapshot.data ?? 0; // Si no hay datos, se asigna 0

        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
        
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircularProgressIndicator(
                value: progressValue,
                strokeWidth: 2,
                backgroundColor: Colors.black12,
              ),
              SizedBox( width: 20 ),
        
              Expanded(
                child: LinearProgressIndicator(
                  value: progressValue,
                ),
              )
        
            ],
          ),
        );
      }
    );
  }
}