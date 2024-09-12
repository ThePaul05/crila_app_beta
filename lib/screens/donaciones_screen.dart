import 'package:flutter/material.dart';

class DonacionesScreen extends StatelessWidget {
  final List<Map<String, String>> cuentas = [
    {
      'banco': 'Banco Atlántida',
      'cuenta': 'Cuenta de Cheques 3100084551',
      'imagen': 'assets/images/banco_atlantida.png'
    },
    {
      'banco': 'Cooperativa Ceibeña',
      'cuenta': 'Cuenta Corriente 001-0025886',
      'imagen': 'assets/images/cooperativa_ceibena.png'
    },
    {
      'banco': 'Banco Occidente',
      'cuenta': 'Cuenta de Cheques 119010029270',
      'imagen': 'assets/images/banco_occidente.png'
    },
    {
      'banco': 'BAC Credomatic',
      'cuenta': 'Cuenta en L 730497851',
      'imagen': 'assets/images/bac_credomatic.png'
    },
    {
      'banco': 'Ficohsa',
      'cuenta': 'Cuenta Corriente 200015353588',
      'imagen': 'assets/images/ficohsa.png'
    },
  ];

  DonacionesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Donaciones'),
      ),
      body: ListView.builder(
        itemCount: cuentas.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Image.asset(
              cuentas[index]['imagen']!,
              width: 50,
              height: 50,
            ),
            title: Text(cuentas[index]['banco']!),
            subtitle: Text(cuentas[index]['cuenta']!),
          );
        },
      ),
    );
  }
}