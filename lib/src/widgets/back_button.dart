import 'package:flutter/material.dart';

//BOTON DE VOLVER A PAGINA WELCOME
Widget backButton(BuildContext context, Color color) {
  return IconButton(
    icon: Icon(
      Icons.arrow_back,
      color: color,
      size: 30.0,
    ),
    onPressed: () {
      Navigator.pop(context);
    },
  );
}
