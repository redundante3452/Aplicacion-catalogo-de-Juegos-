import 'package:flutter/material.dart';
import 'package:myapp/screens/screen_3/widgets/_descripcion_corta_juego.dart';
import 'package:myapp/screens/screen_3/widgets/_genero_juego.dart';
import 'package:myapp/screens/screen_3/widgets/_imagen_juego.dart';
import 'package:myapp/screens/screen_3/widgets/_plataforma_juego.dart';
import 'package:myapp/screens/screen_3/widgets/_titulo_juego.dart';

class ScreenJuegosDetail extends StatelessWidget {
  final dynamic juego;

  const ScreenJuegosDetail({required this.juego, super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromRGBO(38, 56, 63, 1),
        appBar: AppBar(
          backgroundColor: const Color.fromRGBO(224, 20, 45, 1),
          title: const Text(
            'Detalles del Juego',
            style: TextStyle(color: Color.fromRGBO(255, 253, 251, 1)),
          ),
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              TituloJuego(juego: juego, screenWidth: screenWidth, screenHeight: screenHeight),
              ImagenJuego(juego: juego, screenWidth: screenWidth, screenHeight: screenHeight),
              const SizedBox(height: 20),
              DescripcionJuego(juego: juego, screenWidth: screenWidth, screenHeight: screenHeight),
              const SizedBox(height: 10),
              GeneroJuego(juego: juego, screenWidth: screenWidth, screenHeight: screenHeight),
              const SizedBox(height: 10),
              PlataformaJuego(juego: juego, screenWidth: screenWidth, screenHeight: screenHeight)
            ],
          ),
        ),
      ),
    );
  }
}