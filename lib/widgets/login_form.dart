import 'package:flutter/material.dart';

class LoginForm extends StatelessWidget {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        TextField(
          controller: _usernameController,
          decoration: const InputDecoration(labelText: 'Usuario'),
        ),
        TextField(
          controller: _passwordController,
          decoration: const InputDecoration(labelText: 'Contraseña'),
          obscureText: true,
        ),
        const SizedBox(height: 16),
        ElevatedButton(
          onPressed: () {
            // Redirige directamente al Menú Principal
            Navigator.pushReplacementNamed(context, '/main-menu');
          },
          child: const Text('Iniciar Sesión'),
        ),
      ],
    );
  }
}