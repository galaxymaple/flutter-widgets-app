import 'package:flutter/material.dart';

const colorList = <Color>[
  Colors.blue,
  Colors.red,
  Colors.green,
  Colors.yellow,
  Colors.purple,
  Colors.orange,
  Colors.pink,
  Colors.teal,
  Colors.cyan,
  Colors.lime,
  Colors.indigo,
  Colors.amber,
  Colors.brown,
  Colors.grey,
  Colors.blueGrey,
  Colors.black,
];

class AppTheme {

  final int selectedColor;
  final bool isDarkmode;

  AppTheme({
    this.selectedColor = 0,
    this.isDarkmode = false,
  }): assert(selectedColor >= 0, 'Selected color must be greater then 0'),
    assert(selectedColor < colorList.length, 'Selected color must be less or equal than ${colorList.length - 1}');

  ThemeData getTheme() => ThemeData(
    useMaterial3: true,
    brightness: isDarkmode ? Brightness.dark : Brightness.light,	
    colorSchemeSeed: colorList[selectedColor],
    appBarTheme: const AppBarTheme(
      centerTitle: true,
    ),
  );

  // Nuevo método copyWith para crear una nueva instancia de AppTheme con los valores por defecto
  // copyWith método para copiar clases, la instancia de la clase
  AppTheme copyWith({
    // copyWith recibe lo mismo que está en el constructor, la única diferencia es que son opcionales '?'
    int? selectedColor,
    bool? isDarkmode,
  }) => AppTheme(
    // Si se establece un valor, se establece ese valor, de lo contrario se usa el valor por defecto
    selectedColor: selectedColor ?? this.selectedColor,
    isDarkmode: isDarkmode ?? this.isDarkmode,
  );

}