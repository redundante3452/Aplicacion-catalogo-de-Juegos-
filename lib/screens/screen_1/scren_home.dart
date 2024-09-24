import 'package:flutter/material.dart';
import 'package:myapp/screens/screen_2/scren_juegos.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color.fromRGBO(38, 56, 63, 1),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(224, 20, 45, 1),
        title: const Center(
            child: Text('Categorias',
                style: TextStyle(
                    fontSize: 25, color: Color.fromRGBO(255, 253, 251, 1)))),
      ),
      body: Center(
        child: Column(
          children: [
            Flexible(
              child: SizedBox(height: screenHeight * 0.1),
            ),
            Flexible(
              child: SizedBox(height: screenHeight * 0.2),
            ),
            Flexible(
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const JuegosScreen()),
                  );
                },
                child: Container(
                  alignment: Alignment.center,
                  width: screenWidth * 0.8,
                  height: screenHeight * 3,
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(224, 20, 45, 1),
                    borderRadius: BorderRadius.all(
                      Radius.circular(25),
                    ),
                    image: DecorationImage(
                      image: NetworkImage(''), // Ruta de tu imagen
                      fit: BoxFit.cover, // Ajusta cómo se muestra la imagen
                    ),
                  ),
                  child: const Text('JUEGOS',
                      style: TextStyle(
                          fontSize: 30, color: Color.fromRGBO(255, 253, 251, 1))),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}