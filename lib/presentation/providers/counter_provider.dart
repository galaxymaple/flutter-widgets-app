import 'package:flutter_riverpod/flutter_riverpod.dart';

// StateProvider -> pequeña pieza de información del estado de la aplicación
final counterProvider = StateProvider<int>((ref) => 0);