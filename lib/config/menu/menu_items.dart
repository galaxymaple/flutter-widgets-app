
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
];