import 'package:flutter/material.dart';
import '../citas_screen.dart';

class TerapiaPsicologicaScreen extends StatelessWidget {
  const TerapiaPsicologicaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Terapia Psicológica'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset('assets/images/terapia_psicologica.jpg'),
            const Text(
              'La terapia psicológica, también conocida como psicoterapia o terapia de conversación, es un proceso que implica el trabajo entre un terapeuta y una persona que busca apoyo emocional o mental. Su objetivo principal es ayudar a las personas a comprender y manejar sus pensamientos, emociones y comportamientos para mejorar su bienestar y calidad de vida.',
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
