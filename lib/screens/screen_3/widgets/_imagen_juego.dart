import 'package:flutter/material.dart';

class ImagenJuego extends StatelessWidget {
  final dynamic juego;
  final double screenWidth;
  final double screenHeight;

  const ImagenJuego({super.key, required this.juego, required this.screenWidth, required this.screenHeight});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenWidth * 0.9,
      height: screenHeight * 0.3,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(juego['thumbnail']),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}