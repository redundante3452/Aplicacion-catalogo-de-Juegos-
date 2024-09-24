import 'package:flutter/material.dart';

class TituloJuego extends StatelessWidget {
  final dynamic juego;
  final double screenWidth;
  final double screenHeight;

  const TituloJuego(
      {super.key,
      required this.juego,
      required this.screenWidth,
      required this.screenHeight});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: const EdgeInsets.all(20),
      width: screenWidth * 0.8,
      height: screenHeight * 0.1,
      decoration: BoxDecoration(
        color: const Color.fromRGBO(224, 20, 45, 1),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        juego['title'],
        style: const TextStyle(
            fontSize: 20,
            color: Color.fromRGBO(255, 253, 251, 1)),
      ),
    );
  }
}
