import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ButtonsScreen extends StatelessWidget {
  const ButtonsScreen({super.key});

  static const String name = 'buttons_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Buttons Screen'),
      ),
      body: const _ButtonsView(),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.arrow_back_ios_new_rounded),
        onPressed: () {
          context.pop();
        },
      )
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
        // Wrap es similar a las columnas, filas
        child: Wrap(
          spacing: 10,
          alignment: WrapAlignment.center,
          children: [
            ElevatedButton(onPressed: () {}, child: const Text('Elevated Button')),

            const ElevatedButton(onPressed: null, child: Text('Elevated Disabled')),

            ElevatedButton.icon(
              onPressed: () {}, 
              icon: const Icon(Icons.access_alarm_rounded), 
              label: const Text('Elevated Icon')
            ),

            FilledButton(
              onPressed: () {}, 
              child: const Text('Filled Button')
            ),

            FilledButton.icon(
              onPressed: () {}, 
              icon: const Icon(Icons.accessibility_new), 
              label: const Text('Filled Icon')
            ),

            OutlinedButton(
              onPressed: () {},
              child: const Text('Outline'),
            ),

            OutlinedButton.icon(
              onPressed: () {}, 
              icon: const Icon(Icons.assistant_rounded), 
              label: const Text('Outline Icon')
            ),

            TextButton(
              onPressed: () {}, 
              child: const Text('Text Button')
            ),

            TextButton.icon(
              onPressed: () {}, 
              icon: const Icon(Icons.android_rounded),
              label: const Text('Text Icon'),
            ),

            const CustomButton(),

            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.app_registration_rounded),
            ),

            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.app_registration_rounded),
              style: ButtonStyle(
                // MaterialStatePropertyAll es para todos los estados del botón
                backgroundColor: MaterialStatePropertyAll(colors.primary),
                iconColor: const MaterialStatePropertyAll(Colors.white),
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
    
    // ClipRRect para cortar, sirve para hacer bordes redondeados
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Material(
        color: colors.primary,
        // Es como un Gesture Detector pero más personalizado
        child: InkWell(
          onTap: (){},
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text('Hola mundo', style: TextStyle(color: Colors.white)),
          ),
        ),
      ),
    );
  }
}