import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackbarScreen extends StatelessWidget {
  
  static const String name = 'snackbar_screen';

  const SnackbarScreen({super.key});

  void showCustomSnackbar(BuildContext context){

    // Limpiar el snackbar anterior
    ScaffoldMessenger.of(context).clearSnackBars();

    final snackbar = SnackBar(
      content: const Text('Hola Mundo'),
      action: SnackBarAction(label: 'OK!', onPressed: (){}),
      duration: const Duration(seconds: 2),
    );

    ScaffoldMessenger.of(context).showSnackBar(
      snackbar
    );
  }

  void openDialog(BuildContext context){

    showDialog(
      context: context,
      // No cerrar el diálogo al apretar fuera
      barrierDismissible: false,
      // builder -> en tiempo de ejecución
      builder: (context) => AlertDialog(
        title: const Text('¿Estás seguro?'),
        content: const Text('Mollit ea non tempor veniam quis. Occaecat ea ipsum ut qui proident exercitation et mollit. Adipisicing consectetur elit laboris laboris labore nulla nulla do id exercitation qui eu laborum. Laborum cupidatat amet sunt consectetur ea ea mollit occaecat id sunt. Enim officia adipisicing pariatur laborum dolore sint consequat non magna consectetur do.'),
        actions: [
          TextButton(
            child: const Text('Cancelar'),
            onPressed: () => context.pop(),
          ),
          FilledButton(
            child: const Text('Aceptar') ,
            onPressed: () => context.pop(),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Snackbars y Diálogos'),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton.tonal(
              child: const Text('Licencias usadas'),
              onPressed: (){
                showAboutDialog(
                  context: context,
                  children: [
                    const Text('Adipisicing incididunt irure do sit pariatur aliqua culpa excepteur. Do mollit dolor minim duis officia nulla exercitation irure. Incididunt tempor aliqua dolor proident. Excepteur ea sint id consectetur ea velit tempor minim veniam dolore eiusmod ipsum enim veniam. Sunt ut irure non veniam proident irure voluptate est dolor nulla.')
                  ]
                );
              },
            ),

            FilledButton.tonal(
              child: const Text('Mostrar diálogo'),
              onPressed: () => openDialog(context)
            ),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton.extended(
        label: const Text('Mostrar Snackbar'),
        icon: const Icon(Icons.remove_red_eye_outlined),
        onPressed: () => showCustomSnackbar(context),
      ),
    );
  }
}