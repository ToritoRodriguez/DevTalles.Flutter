import 'package:flutter/material.dart';

// StatefulWidget es un widget que puede cambiar su estado
class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {

  int counter = 0;

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(

      appBar: AppBar(
        title: const Text('Counter Screen'),
        centerTitle: true,
      ),

      body: Center(
        child: Column(
          // MainAxisAlignment.center alinea los widgets en el centro
          // Existen .Center, .start, .end, .spaceBetween, .spaceAround
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(counter.toString(), style: TextStyle( fontSize: 160, fontWeight: FontWeight.w500)),
            Text("Click${ counter == 1 ? '' : 's'}", style: TextStyle( fontSize: 25, fontWeight: FontWeight.w300)),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // setState es un método que permite actualizar el estado del widget
          setState(() {
            counter++;
          });
      },
      child: Icon(Icons.plus_one_rounded),
      ),
    );
  }
}