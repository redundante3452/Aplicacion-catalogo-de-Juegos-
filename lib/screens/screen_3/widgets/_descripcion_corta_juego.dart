// Creo un widget para mostrar la descripción corta del juego
import 'package:flutter/material.dart';

class DescripcionJuego extends StatelessWidget {
  final dynamic juego;
  final double screenWidth;
  final double screenHeight;

  const DescripcionJuego({super.key, required this.juego, required this.screenWidth, required this.screenHeight});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color.fromRGBO(224, 20, 45, 1),
        borderRadius: BorderRadius.circular(10),
      ),
      width: screenWidth * 1,
      constraints: BoxConstraints(minHeight: screenHeight * 0.1),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Text(
          juego['short_description'],
          style: const TextStyle(fontSize: 18, color: Color.fromRGBO(255, 253, 251, 1)),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}