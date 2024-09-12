import 'package:flutter/material.dart';

class SobreNosotrosScreen extends StatelessWidget {
  const SobreNosotrosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CRILA'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              sectionTitle('¿Qué es el CRILA?'),
              sectionContent(
                'Es una institución sin fines de lucro cuyo objetivo es la rehabilitación integral de las personas que tienen algún grado de discapacidad mediante la Terapia Física, Terapia Psicológica, Hidroterapia y Educación Especial. Se atiende a todas las personas que requieren nuestros servicios, sin distinción de raza, política, preferencia sexual, de ideologías espirituales, posición social, económica o nacionalidad.',
              ),
              sectionTitle('Misión'),
              sectionContent(
                'Brindar al usuario servicios de calidad y calidez para lograr adecuarlo al proceso de rehabilitación.',
              ),
              sectionTitle('Visión'),
              sectionContent(
                'Proveer servicios de rehabilitación física, mental y emocional a todos los habitantes del Litoral Atlántico de Honduras, que demanden dichos servicios, con especial énfasis en las personas de escasos recursos económicos, procurando que el servicio sea de calidad con calidez y accesible.',
              ),
              sectionTitle('Nuestros Logros'),
              sectionContent(
                'A través de su corta historia, el C.R.I.L.A. ha tenido un crecimiento inesperado, llegando a cubrir un gran vacío que existía en la población por la falta de un centro de rehabilitación física en la cuidad de la Ceiba y el Litoral Atlántico de Honduras.\n\n'
                '• La construcción de nuestro propio edificio en un terreno de 4 manzanas que nos fue donado para tal fin.\n'
                '• Atención a un promedio de 2000 pacientes mensuales.\n'
                '• Cobertura a nivel regional, atendiendo pacientes de los departamentos de Atlántida, Yoro, Colón, Islas de la Bahía y Gracias a Dios.\n'
                '• En proceso la construcción de un Taller de Ortesis y Prótesis.',
              ),
              sectionTitle('Alianzas Estratégicas'),
              sectionContent(
                'Establecimiento de alianzas estratégicas para lograr las metas del C.R.I.L.A., resaltan las alianzas con:\n\n'
                '• CURLA: UNAH\n'
                '• Hospital Atlántida\n'
                '• Fundación TIGO\n'
                '• Molineros Comercial\n'
                '• Grupo Litoral\n'
                '• Autoridades Municipales del Departamento de Atlántida\n'
                '• Autoridades Municipales de Educación\n'
                '• Banco Atlántida\n'
                '• Banco de Occidente\n'
                '• BANTRAB\n'
                '• Cooperativa Ceibeña\n'
                '• Alianza con la SEDIS',
              ),
              sectionTitle('Nuestra Ubicación'),
              sectionContent(
                'Col. Palmira #2 carretera Ceiba–Tela Desvío a la par de la escuela Juana Reyes de Maresma, 7 cuadras al fondo.\n'
                'La Ceiba, Atlántida, Honduras.',
              ),
              sectionTitle('Horarios'),
              sectionContent(
                'Lunes - Jueves: 7:00am - 12:00pm, 1:00pm - 5:00pm\n'
                'Viernes: 7:00am - 12:00pm, 1:00pm - 4:00pm',
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget sectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0, bottom: 8.0),
      child: Text(
        title,
        style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget sectionContent(String content) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Text(
        content,
        style: const TextStyle(fontSize: 16, height: 1.5),
      ),
    );
  }
}
