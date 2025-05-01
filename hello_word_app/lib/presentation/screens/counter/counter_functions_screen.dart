import 'package:flutter/material.dart';

// StatefulWidget es un widget que puede cambiar su estado
class CounterFunctionsScreen extends StatefulWidget {
  const CounterFunctionsScreen({super.key});

  @override
  State<CounterFunctionsScreen> createState() => _CounterFunctionsScreenState();
}

class _CounterFunctionsScreenState extends State<CounterFunctionsScreen> {

  int counter = 0;

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(

      appBar: AppBar(
        title: const Text('Counter Functions Screen'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.refresh_rounded),
            onPressed: (){
              setState(() {
                counter = 0;
              });
            },
          ),
        ], 
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

      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CustomButton(
            icon: Icons.refresh_outlined,
            onPressed: () {
              counter = 0;
              setState(() {});
            }
          ),

          const SizedBox(
            height: 20,
          ),

          CustomButton(
            icon: Icons.plus_one_rounded,
            onPressed: () {
              counter++;
              setState(() {});
            }
            ),

          const SizedBox(
            height: 20,
          ),

          CustomButton(
            icon: Icons.exposure_minus_1_rounded,
            onPressed: () {
              if(counter == 0) return;
              counter--;
              setState(() {});
            }
            ),
        ],
      )
    );
  }
}

class CustomButton extends StatelessWidget {

  final IconData icon;
  final VoidCallback? onPressed;

  const CustomButton({
    super.key, 
    required this.icon, 
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      shape: StadiumBorder(),
      onPressed: onPressed,
      child: Icon(icon),
    );
  }
}