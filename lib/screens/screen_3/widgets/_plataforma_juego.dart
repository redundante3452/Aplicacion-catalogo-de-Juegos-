import 'package:flutter/material.dart';

class PlataformaJuego extends StatelessWidget {
  final dynamic juego;
  final double screenWidth;
  final double screenHeight;

  const PlataformaJuego({
    super.key,
    required this.juego,
    required this.screenWidth,
    required this.screenHeight,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color.fromRGBO(224, 20, 45, 1),
        borderRadius: BorderRadius.circular(10),
      ),
      alignment: Alignment.center,
      height: screenHeight * 0.1,
      width: screenWidth * 0.6,
      child: Text(
        juego['platform'],
        style: const TextStyle(
            fontSize: 20, color: Color.fromRGBO(255, 253, 251, 1)),
        textAlign: TextAlign.center,
      ),
    );
  }
}
