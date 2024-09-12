import 'package:flutter/material.dart';
import '../citas_screen.dart';

class TerapiaFisicaScreen extends StatelessWidget {
  const TerapiaFisicaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Terapia Física'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset('assets/images/terapia_fisica.jpg'),
            const Text(
              'La terapia física, también conocida como fisioterapia, es una disciplina de la salud que se enfoca en el tratamiento, prevención y rehabilitación de trastornos que afectan el movimiento y la función física del cuerpo. Se utiliza para ayudar a las personas a recuperar o mejorar su movilidad, aliviar el dolor y prevenir discapacidades, utilizando técnicas no invasivas. Los fisioterapeutas evalúan el estado físico de sus pacientes y crean planes de tratamiento personalizados para promover la curación y el bienestar.',
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
