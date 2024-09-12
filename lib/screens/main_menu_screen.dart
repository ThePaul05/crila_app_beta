import 'package:flutter/material.dart';
import 'sobre_nosotros_screen.dart';
import 'servicios/atencion_medica_screen.dart';
import 'servicios/educacion_especial_screen.dart';
import 'servicios/terapia_psicologica_screen.dart';
import 'servicios/terapia_fisica_screen.dart';
import 'servicios/escuela_padres_screen.dart';
import 'donaciones_screen.dart';

class MainMenuScreen extends StatelessWidget {
  MainMenuScreen({super.key});
  final List<Map<String, dynamic>> cardData = [
    {
      'title': 'Terapia Psicológica',
      'description': 'This is the detail of Card 1',
      'image': 'assets/images/terapia_psicologica.jpg',
      'screen': const TerapiaPsicologicaScreen(),
    },
    {
      'title': 'Terapia Física',
      'description': 'This is the detail of Card 2',
      'image': 'assets/images/terapia_fisica.jpg',
      'screen': const TerapiaFisicaScreen(),
    },
    {
      'title': 'Atención Médica',
      'description': 'This is the detail of Card 3',
      'image': 'assets/images/atencion_medica.jpg',
      'screen': const AtencionMedicaScreen(),
    },
    {
      'title': 'Educación Especial',
      'description': 'This is the detail of Card 3',
      'image': 'assets/images/educacion_especial.jpg',
      'screen':const EducacionEspecialScreen(),
    },
    {
      'title': 'Escuela para Padres',
      'description': 'This is the detail of Card 3',
      'image': 'assets/images/escuela_padres.jpg',
      'screen': const EscuelaPadresScreen(),
    },
    {
      'title': 'Donaciones',
      'description': 'This is the detail of Card 3',
      'image': 'assets/images/donaciones.png',
      'screen': DonacionesScreen(),
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Menú Principal CRILA APP'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Opciones',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('Sobre Nosotros'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SobreNosotrosScreen()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.exit_to_app),
              title: const Text('Cerrar Sesión'),
              onTap: () {
                // Navegar de regreso al login
                Navigator.pushReplacementNamed(context, '/login');
              },
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: cardData.length,
          itemBuilder: (context, index) {
            return Card(
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => cardData[index]['screen'], // Navega a la pantalla correspondiente
                    ),
                  );
                },
                child: Column(
                  children: [
                    Image.network(
                      cardData[index]['image']!,
                      height: 150,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        cardData[index]['title']!,
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
