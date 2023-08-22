
import 'package:flutter/material.dart' show IconData, Icons;

class MenuItem {
  final String title;
  final String subTitle;
  final String link;
  final IconData icon;

  const MenuItem({
    required this.title, 
    required this.subTitle, 
    required this.link, 
    required this.icon
  });

}

const appMenuItems = <MenuItem>[
  MenuItem(
    title: 'Riverpod Counter', 
    subTitle: 'Introducción a Riverpod', 
    link: '/counter-riverpod', 
    icon: Icons.add
  ),
  MenuItem(
    title: 'Botones', 
    subTitle: 'Tipos de Botones', 
    link: '/buttons', 
    icon: Icons.smart_button_outlined
  ),
  MenuItem(
    title: 'Tarjetas', 
    subTitle: 'Contenedor estilizado', 
    link: '/cards', 
    icon: Icons.credit_card
  ),
  MenuItem(
    title: 'Progress Indicators', 
    subTitle: 'Generales y controlados', 
    link: '/progress', 
    icon: Icons.refresh_rounded
  ),
  MenuItem(
    title: 'Snackbars y diálogos', 
    subTitle: 'Indicadores en pantalla', 
    link: '/snackbars', 
    icon: Icons.info_outline
  ),
  MenuItem(
    title: 'Animated Container', 
    subTitle: 'Stateful Widget Animado', 
    link: '/animated', 
    icon: Icons.check_box_outline_blank_outlined
  ),
  MenuItem(
    title: 'UI Controls', 
    subTitle: 'Una serie de controles de Flutter', 
    link: '/ui-controls', 
    icon: Icons.car_rental_outlined
  ),
  MenuItem(
    title: 'Introducción a la aplicación', 
    subTitle: 'Pequeño tutorial introductorio', 
    link: '/tutorial', 
    icon: Icons.accessibility_rounded
  ),
  MenuItem(
    title: 'InfiniteScroll y Pull', 
    subTitle: 'Listas infinitas y pull to refresh', 
    link: '/infinite', 
    icon: Icons.list_alt_outlined
  ),
];