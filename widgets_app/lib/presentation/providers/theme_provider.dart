import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/theme/app_theme.dart';

final isDarkModeProvider = StateProvider<bool>((ref) => false);  

// Listado de colores inmutable
final colorListProvider = Provider((ref) => colorList);

final selectedColorProvider = StateProvider((ref) => 0);

// Instancia de AppTheme
final themeNotifierProvider = StateNotifierProvider<ThemeNotifier, AppTheme>( // Mantenemos un estado del estado mas complejo
  (ref) => ThemeNotifier(),
);

class ThemeNotifier extends StateNotifier<AppTheme>{// Se va a encargar de mantener un estado en particular
  // State = Estado = new AppTheme();
  ThemeNotifier() : super(AppTheme()); // Estoy creando una instancia de AppTheme

  void toggleDarkMode() {
    state = state.copyWith(isDarkMode: !state.isDarkMode); // Cambia el estado de isDarkMode
  }
  void changeColorIndex(int colorIndex) {
    state = state.copyWith(selectedColor: colorIndex); // Cambia el estado de selectedColor
  }

}