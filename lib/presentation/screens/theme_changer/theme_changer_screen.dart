import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/presentation/providers/theme_provider.dart';

class ThemeChangerScreen extends ConsumerWidget {

  static const String name = 'theme_changer_screen';

  const ThemeChangerScreen({super.key});

  @override
  Widget build(BuildContext context, ref) {

    // final isDarkmode = ref.watch(isDarkmodeProvider);
    final isDarkmode = ref.watch(themeNotifierProvider).isDarkmode;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Theme Changer'),
        actions: [
          IconButton(
            icon: Icon(isDarkmode ? Icons.dark_mode_outlined : Icons.light_mode_outlined),
            onPressed: () {
              // ref.read(isDarkmodeProvider.notifier).update((state) => !state);
              // Acá interesan los métodos del notifier, no los métodos de la instancia
              ref.read(themeNotifierProvider.notifier).toggleDarkmode();
            },
          ),
        ],
      ),
      body: const _ThemeChangerView(),
    );
  }
}

class _ThemeChangerView extends ConsumerWidget {
  const _ThemeChangerView();

  @override
  Widget build(BuildContext context, ref) {

    final List<Color> colors = ref.watch(colorListProvider);
    // final int selectedColor = ref.watch(selectedColorProvider);
    // Usando el ThemeNotifier para cambiar el color
    final int selectedColor = ref.watch(themeNotifierProvider).selectedColor;

    return ListView.builder(
      itemCount: colors.length,
      itemBuilder: (color, index){
        final Color color = colors[index];
        return RadioListTile(
          title: Text('Este color', style: TextStyle(color: color)),
          subtitle: Text('${color.value}'),
          activeColor: color,
          value: index, 
          groupValue: selectedColor, 
          onChanged: (value) {
            // ref.read(selectedColorProvider.notifier).state = index;
            // Se llama directamente al método para cambiar el color del ThemeNotifier
            ref.watch(themeNotifierProvider.notifier).changeColorIndex(index);
          },
        );
      },
    );
  }
}