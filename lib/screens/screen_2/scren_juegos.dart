import 'package:flutter/material.dart';
import 'package:myapp/free_to_game_api.dart';
import 'package:myapp/screens/screen_3/screen_juegos_detail.dart';

class JuegosScreen extends StatelessWidget {
  const JuegosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: const Color.fromRGBO(255, 253, 251, 1),
            appBar: AppBar(
              title: const Text('Juegos',
                  style: TextStyle(
                      fontSize: 25, color: Color.fromRGBO(255, 253, 251, 1))),
              centerTitle: true,
              backgroundColor: const Color.fromRGBO(224, 20, 45, 1),
            ),
            body: FutureBuilder<List<dynamic>>(
            future: juegos(),
            builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            } else if (snapshot.hasError) {
              return Center(child: Text('Error: ${snapshot.error}'));
            } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
              return const Center(child: Text('No se encontraron juegos.'));
            } else {
              return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (context, index) {
                  final juego = snapshot.data![index];
                  return ListTile(
                    title: Text(juego['title']),
                    subtitle: Container(), // Aquí puedes mostrar la descripción corta del juego
                    leading: Image.network(juego['thumbnail']),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ScreenJuegosDetail(juego: juego)),
                      );
                    },
                    trailing: const Icon(Icons.arrow_forward),
                  );
                },
              );
            }
          },
        ),
      ),
    );
  }
}
