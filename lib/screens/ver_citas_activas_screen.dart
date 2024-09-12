import 'package:flutter/material.dart';

class VerCitasActivasScreen extends StatelessWidget {
  final List<Map<String, String>> citas = [
    {
      'nombre': 'Juan',
      'apellido': 'Pérez',
      'fecha': '2024-09-10',
      'servicio': 'Terapia física',
    },
    {
      'nombre': 'María',
      'apellido': 'Gómez',
      'fecha': '2024-09-12',
      'servicio': 'Terapia psicológica',
    },
  ];

  VerCitasActivasScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Citas Activas'),
      ),
      body: ListView.builder(
        itemCount: citas.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: const Icon(Icons.event_available),
            title: Text('${citas[index]['nombre']} ${citas[index]['apellido']}'),
            subtitle: Text(
                'Fecha: ${citas[index]['fecha']} - Servicio: ${citas[index]['servicio']}'),
          );
        },
      ),
    );
  }
}