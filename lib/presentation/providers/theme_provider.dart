import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/theme/app_theme.dart';

// Listado de colores inmutable, nunca se va a cambiar
// Provider lo crea inmutable, en todos los lugares donde se use 'ref' se puede llegar al colorList
final colorListProvider = Provider((ref) => colorList);

// Un simple booleano
// StateProvider para mantener un estado de pieza
final isDarkmodeProvider = StateProvider((ref) => false);

// Un simple entero
final selectedColorProvider = StateProvider((ref) => 0);

// Un objeto de tipo AppTheme (custom)
// StateNotifierProvider para mantener un estado más complejo, elaborado
// Este estado es administrado por la clase ThemeNotifier de tipo AppTheme
// ThemeNotifier controla el estado de AppTheme
final themeNotifierProvider = StateNotifierProvider<ThemeNotifier, AppTheme>(
  (ref) => ThemeNotifier(), // creando la primera instancia del ThemeNotifier que inicializa el tema
);

// Controller o Notifier
// Mantener una instancia del AppTheme
class ThemeNotifier extends StateNotifier<AppTheme> {
  // Constructor para crear la primera instancia del AppTheme con los valores por defecto (color 0 y modo claro)
  // STATE -> Estado = new AppTheme(), que es síncrono
  ThemeNotifier() : super(AppTheme());

  void toggleDarkmode(){
    // cambiar el modo Dark, se pone el valor opuesto
    // El nuevo estado es una copia del estado actual pero con el valor opuesto del Darkmode
    state = state.copyWith(isDarkmode: !state.isDarkmode);
  }

  void changeColorIndex(int colorIndex){
    state = state.copyWith(selectedColor: colorIndex);
  }
}