import 'package:flutter/material.dart';
import 'programar_citas_screen.dart';
import 'ver_citas_activas_screen.dart';

class CitasScreen extends StatelessWidget {
  const CitasScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Citas'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProgramarCitasScreen()),
                );
              },
              icon: const Icon(Icons.calendar_today, size: 50),
              label: const Text('Programar Citas', style: TextStyle(fontSize: 18)),
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 60),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => VerCitasActivasScreen()),
                );
              },
              icon: const Icon(Icons.view_list, size: 50),
              label: const Text('Ver Citas Activas', style: TextStyle(fontSize: 18)),
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 60),
              ),
            ),
          ],
        ),
      ),
    );
  }
}