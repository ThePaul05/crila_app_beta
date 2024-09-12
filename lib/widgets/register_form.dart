import 'package:flutter/material.dart';

// ignore: must_be_immutable
class RegisterForm extends StatelessWidget {

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _surnameController = TextEditingController();
  final TextEditingController _dateController = TextEditingController();
  final TextEditingController _dniController = TextEditingController();
  final TextEditingController _nacionalidadController = TextEditingController();
  final TextEditingController _telefonoController = TextEditingController();
  final TextEditingController _direccionController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();
  String? _selectedGender;
  DateTime? _selectedDate;

  RegisterForm({super.key});

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );
    if (picked != null && picked != _selectedDate) {
      (() {
        _selectedDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        TextField(
          controller: _nameController,
          decoration: const InputDecoration(labelText: 'Nombre(s)'),
        ),
        TextField(
          controller: _surnameController,
          decoration: const InputDecoration(labelText: 'Apellido(s)'),
        ),
         TextField(
                controller: _dateController,
                decoration: const InputDecoration(
                  labelText: 'Fecha de Nacimiento',
                  hintText: 'Selecciona una fecha',
                ),
                readOnly: true,
                onTap: () => _selectDate(context),
              ),
        TextField(
          controller: _dniController,
          decoration: const InputDecoration(labelText: 'DNI', hintText: 'Selecciona una fecha',),
        ),
        TextField(
          controller: _nacionalidadController,
          decoration: const InputDecoration(labelText: 'Nacionalidad'),
        ),
        DropdownButtonFormField<String>(
                decoration: const InputDecoration(labelText: 'Sexo'),
                value: _selectedGender,
                items: ['Masculino', 'Femenino'].map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (newValue) {
                  (() {
                    _selectedGender = newValue;
                  });
                },
                validator: (value) =>
                    value == null ? 'Por favor selecciona tu sexo' : null,
              ),
        TextField(
          controller: _direccionController,
          decoration: const InputDecoration(labelText: 'Direccion'),
        ),
        TextField(
          controller: _telefonoController,
          decoration: const InputDecoration(labelText: 'Telefono'),
        ),
        TextField(
          controller: _emailController,
          decoration: const InputDecoration(labelText: 'Correo Electrónico'),
        ),
        TextField(
          controller: _passwordController,
          decoration: const InputDecoration(labelText: 'Contraseña'),
          obscureText: true,
        ),
        TextField(
          controller: _confirmPasswordController,
          decoration: const InputDecoration(labelText: 'Confirmar Contraseña'),
          obscureText: true,
        ),
        const SizedBox(height: 16),
        ElevatedButton(
          onPressed: () {
            // Lógica para registrar usuario
          },
          child: const Text('Registrar'),
        ),
      ],
    );
  }
}