
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
    subTitle: 'Contendor estilizado', 
    link: '/cards', 
    icon: Icons.credit_card
  ),
];