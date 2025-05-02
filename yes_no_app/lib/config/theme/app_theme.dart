import 'package:flutter/material.dart';

// Formato para usar los colores en exadecimal
const Color _CustomColor = Color(0xFF6200EE);

// El guion bajo indica que la variable es privada
const List<Color> _colorsTheme = [
  _CustomColor,
  Colors.blue,
  Colors.teal,
  Colors.green,
  Colors.yellow,
  Colors.orange,
  Colors.pink
];

class AppTheme {

  final int selectedColor;

  AppTheme({
    this.selectedColor = 0
  }): assert( selectedColor >= 0 && selectedColor <= _colorsTheme.length, 'Colors must be between 0 and ${_colorsTheme.length}');

  ThemeData theme(){
    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: _colorsTheme[selectedColor],
      //brightness: Brightness.dark,
    );
  }
}