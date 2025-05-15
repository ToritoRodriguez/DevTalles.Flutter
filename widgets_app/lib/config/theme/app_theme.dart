import 'package:flutter/material.dart';

const colorList = <Color>[
  Colors.blue,
  Colors.teal,
  Colors.green,
  Colors.red,
  Colors.purple,
  Colors.deepPurple,
  Colors.orange,
  Colors.yellow,
  Colors.pink,
  Colors.pinkAccent,
];

class AppTheme {
  final int selectedColor;
  final bool isDarkMode;

  AppTheme({ 
    this.selectedColor = 0,
    this.isDarkMode = false,
  }) :  assert (selectedColor >= 0, 'Selected color must be greater then 0'),
        assert (selectedColor < colorList.length, 'Selected color must be less or equal than ${colorList.length -1 }');

  ThemeData getTheme() => ThemeData(
    useMaterial3: true,
    brightness: isDarkMode ? Brightness.dark : Brightness.light,
    colorSchemeSeed: colorList[selectedColor],
    appBarTheme: const AppBarTheme(
      centerTitle: false,
    )
  );

  // Es una copia de la clase AppTheme
  // Se usa para cambiar el estado de la clase AppTheme
  AppTheme copyWith({ 
    int? selectedColor, 
    bool? isDarkMode
    }) => AppTheme(
      selectedColor: selectedColor ?? this.selectedColor,
      isDarkMode: isDarkMode ?? this.isDarkMode,
    );
}