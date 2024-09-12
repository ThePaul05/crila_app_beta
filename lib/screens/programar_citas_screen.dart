import 'package:flutter/material.dart';

class ProgramarCitasScreen extends StatefulWidget {
  const ProgramarCitasScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ProgramarCitasScreenState createState() => _ProgramarCitasScreenState();
}

class _ProgramarCitasScreenState extends State<ProgramarCitasScreen> {
  final _formKey = GlobalKey<FormState>();
  
  final TextEditingController _nombreController = TextEditingController();
  final TextEditingController _apellidoController = TextEditingController();
  final TextEditingController _identificacionController = TextEditingController();
  final TextEditingController _edadController = TextEditingController();
  final TextEditingController _nacionalidadController = TextEditingController();
  String _sexo = 'Masculino';
  final TextEditingController _direccionController = TextEditingController();
  final TextEditingController _telefonoController = TextEditingController();
  String _servicio = 'Terapia física';
  String _fechaCita = '2024-09-10';
  final TextEditingController _otrosController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Programar Cita'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              TextFormField(
                controller: _nombreController,
                decoration: const InputDecoration(labelText: 'Nombre(s)'),
              ),
              TextFormField(
                controller: _apellidoController,
                decoration: const InputDecoration(labelText: 'Apellidos'),
              ),
              TextFormField(
                controller: _identificacionController,
                decoration: const InputDecoration(labelText: 'Identificación'),
              ),
              TextFormField(
                controller: _edadController,
                decoration: const InputDecoration(labelText: 'Edad'),
              ),
              TextFormField(
                controller: _nacionalidadController,
                decoration: const InputDecoration(labelText: 'Nacionalidad'),
              ),
              DropdownButtonFormField<String>(
                value: _sexo,
                decoration: const InputDecoration(labelText: 'Sexo'),
                items: ['Masculino', 'Femenino'].map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (newValue) {
                  setState(() {
                    _sexo = newValue!;
                  });
                },
              ),
              TextFormField(
                controller: _direccionController,
                decoration: const InputDecoration(labelText: 'Dirección'),
              ),
              TextFormField(
                controller: _telefonoController,
                decoration: const InputDecoration(labelText: 'Teléfono'),
              ),
              DropdownButtonFormField<String>(
                value: _servicio,
                decoration: const InputDecoration(labelText: 'Servicio'),
                items: [
                  'Terapia física',
                  'Terapia psicológica',
                  'Atención médica',
                  'Educación especial',
                  'Escuela para padres',
                ].map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (newValue) {
                  setState(() {
                    _servicio = newValue!;
                  });
                },
              ),
              DropdownButtonFormField<String>(
                value: _fechaCita,
                decoration: const InputDecoration(labelText: 'Fecha de Cita'),
                items: ['2024-09-10', '2024-09-12'].map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (newValue) {
                  setState(() {
                    _fechaCita = newValue!;
                  });
                },
              ),
              TextFormField(
                controller: _otrosController,
                decoration: const InputDecoration(labelText: 'Otros'),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Lógica para guardar la cita
                  if (_formKey.currentState!.validate()) {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      content: Text('Cita Programada con éxito'),
                    ));
                  }
                },
                child: const Text('Programar Cita'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}