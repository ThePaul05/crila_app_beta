import 'package:flutter/material.dart';
import '../citas_screen.dart';

class EscuelaPadresScreen extends StatelessWidget {
  const EscuelaPadresScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Escuela para Padres'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset('assets/images/escuela_padres.jpg'),
            const Text(
              'La escuela para padres es un programa educativo diseñado para brindar a los padres, cuidadores o tutores las herramientas, conocimientos y habilidades necesarias para criar a sus hijos de manera efectiva, positiva y con una buena comprensión del desarrollo infantil. Estos programas tienen como objetivo mejorar la comunicación, la relación familiar y proporcionar estrategias para manejar los desafíos comunes que enfrentan los padres en la crianza.',
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const CitasScreen()),
                );
              },
              child: const Text('Reservar Cita'),
            ),
          ],
        ),
      ),
    );
  }
}
