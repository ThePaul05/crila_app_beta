import 'package:flutter/material.dart';
import '../citas_screen.dart';

class AtencionMedicaScreen extends StatelessWidget {
  const AtencionMedicaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Atención Médica'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset('assets/images/atencion_medica.jpg'),
            const Text(
              'La atención médica es el conjunto de servicios y cuidados proporcionados por profesionales de la salud, con el objetivo de promover, mantener o restablecer la salud de las personas. Este concepto abarca una amplia gama de servicios que incluyen la prevención de enfermedades, el diagnóstico, tratamiento, rehabilitación y apoyo emocional. La atención médica puede ser proporcionada por médicos, enfermeras, dentistas, terapeutas, farmacéuticos, y otros profesionales de la salud, y se organiza en diferentes niveles de atención según la complejidad de los problemas de salud.',
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
