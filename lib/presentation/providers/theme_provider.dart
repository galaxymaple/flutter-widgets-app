import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/theme/app_theme.dart';

// Listado de colores inmutable, nunca se va a cambiar
// Provider lo crea inmutable, en todos los lugares donde se use 'ref' se puede llegar al colorList
final colorListProvider = Provider((ref) => colorList);

// Un simple booleano
final isDarkmodeProvider = StateProvider((ref) => false);

// Un simple entero
final selectedColorProvider = StateProvider((ref) => 0);