import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ButtonsScreen extends StatelessWidget {
  
  static const String name = 'button-screen';

  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Button Screen'),
      ),
      body: const _ButtonsView(),
      floatingActionButton: FloatingActionButton(
        child: const Icon( Icons.arrow_back_ios_new_rounded),
        onPressed: () {
          context.pop(); // Regresar a la pantalla anterior
        },
      ),
    );
  }
}

class _ButtonsView extends StatelessWidget {
  const _ButtonsView();

  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;

    return SizedBox(
      width: double.infinity,

      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: Wrap(
          spacing: 10,
          alignment: WrapAlignment.center,
          children: [
            ElevatedButton( 
              onPressed: () {}, 
              child: Text('Elevated Button') 
            ),
      
            const ElevatedButton( 
              onPressed: null, 
              child: Text('Elevated disabled') 
            ),
      
            ElevatedButton.icon(
              onPressed: () {}, 
              icon: const Icon(Icons.access_alarm_rounded), 
              label: const Text('Elevated Icon')
            ),
      
            FilledButton(
              onPressed: () {}, 
              child: Text('Filled Button')
            ),

            FilledButton.icon(
              onPressed: () {}, 
              icon: Icon(Icons.access_alarm_rounded), 
              label: Text('Filled Icon')
            ),

            OutlinedButton(
              onPressed: () {}, 
              child: Text('Outlined Button')
            ),

            OutlinedButton.icon(
              onPressed: () {}, 
              icon: Icon(Icons.access_alarm_rounded), 
              label: Text('Outlined Icon')
            ),

            TextButton(
              onPressed: () {}, 
              child: Text('Text Button')
            ),

            TextButton.icon(
              onPressed: () {}, 
              icon: Icon(Icons.access_alarm_rounded), 
              label: Text('Text Icon')
            ),

            CustomButton(),

            IconButton(
              onPressed: () {}, 
              icon: const Icon(Icons.access_alarm_rounded)
            ),
            
            IconButton(
              onPressed: () {}, 
              icon: Icon(Icons.read_more_outlined), 
              style: IconButton.styleFrom(
                backgroundColor: colors.primary,
                foregroundColor: colors.onPrimary,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return ClipRRect(// El ClipRRect es el que hace el borde redondeado
      borderRadius: BorderRadius.circular(20),
      child: Material(
        color: colors.primary,
        child: InkWell(// El inkwell es el que tiene el efecto de splash
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          
            child: Text('Hola mundo', style: TextStyle(color: Colors.white),)
          ),
        ),
      ),
    );
  }
}