import 'package:flutter/material.dart';
import '../citas_screen.dart';

class EducacionEspecialScreen extends StatelessWidget {
  const EducacionEspecialScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Educación Especial'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset('assets/images/educacion_especial.jpg'),
            const Text(
              'La educación especial se refiere a la formación, desarrollo y apoyo educativo dirigido a personas con discapacidades físicas, cognitivas, sensoriales, emocionales o del desarrollo. Es un campo interdisciplinario que abarca tanto la medicina como la educación y busca adaptar el proceso educativo para asegurar que los estudiantes con necesidades especiales reciban una atención adecuada que les permita alcanzar su máximo potencial en el aprendizaje.',
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
