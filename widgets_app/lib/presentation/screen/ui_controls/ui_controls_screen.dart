import 'package:flutter/material.dart';

class UiControlsScreen extends StatelessWidget {

  static const String name = 'ui_Control-screen';

  const UiControlsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('UI Controls'),
      ),
      body: const _UiControlsView(),
    );
  }
}

class _UiControlsView extends StatefulWidget {
  const _UiControlsView();

  @override
  State<_UiControlsView> createState() => _UiControlsViewState();
}

enum Transportation { car, plane, boat, submarine }

class _UiControlsViewState extends State<_UiControlsView> {

  bool isDeveloperMode = true;
  Transportation selectedTransportation = Transportation.car; // Valor por defecto
  bool wantsBreakfast = false;
  bool wantsLunch = false;
  bool wantsDinner = false;

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const ClampingScrollPhysics(),
      children: [
        SwitchListTile(
          title: const Text('Developer Mode'),
          subtitle: const Text('Show developer options'),
          value: true, 
          onChanged: (value) => setState(() {
            isDeveloperMode = !isDeveloperMode;
          }),
        ),

        ExpansionTile(
          title: const Text('Vehiculo de transporte'),
          subtitle: Text('$selectedTransportation'),
          children: [
            RadioListTile(
              title: const Text('by Car'),
              subtitle: const Text('Viajar en coche'),
              value: Transportation.car, 
              groupValue: selectedTransportation, 
              onChanged: (value) => setState(() {
                selectedTransportation =  Transportation.car;
              }),
            ),

            RadioListTile(
              title: const Text('by boat'),
              subtitle: const Text('Viajar en bote'),
              value: Transportation.boat, 
              groupValue: selectedTransportation, 
              onChanged: (value) => setState(() {
                selectedTransportation =  Transportation.boat;
              }),
            ),

            RadioListTile(
              title: const Text('by plane'),
              subtitle: const Text('Viajar en avion'),          
              value: Transportation.plane, 
              groupValue: selectedTransportation, 
              onChanged: (value) => setState(() {
                selectedTransportation =  Transportation.plane;
              }),
            ),

            RadioListTile(
              title: const Text('by submarine'),
              subtitle: const Text('Viajar en submarino'),
              value: Transportation.submarine, 
              groupValue: selectedTransportation, 
              onChanged: (value) => setState(() {
                selectedTransportation =  Transportation.submarine;
              }),
            ),
          ],
        ),

        CheckboxListTile(
          title: const Text('¿Quieres desayuno?'),
          value: wantsBreakfast, 
          onChanged: (value) => setState(() {
            wantsBreakfast = !wantsBreakfast;
          }),
        ),
        CheckboxListTile(
          title: const Text('¿Quieres Almuerzo?'),
          value: wantsLunch, 
          onChanged: (value) => setState(() {
            wantsLunch = !wantsLunch;
          }),
        ),
        CheckboxListTile(
          title: const Text('¿Quieres cena?'),
          value: wantsDinner, 
          onChanged: (value) => setState(() {
            wantsDinner = !wantsDinner;
          }),
        ),
      ],
    );
  }
}