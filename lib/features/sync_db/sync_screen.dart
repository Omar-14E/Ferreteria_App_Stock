import 'package:flutter/material.dart';

class SyncScreen extends StatelessWidget {
  final int cantidadFinal;
  const SyncScreen({super.key, required this.cantidadFinal});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.check_circle, color: Colors.green, size: 100),
            const SizedBox(height: 20),
            const Text(
              '¡Sincronización Exitosa!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Text(
              'Se actualizaron $cantidadFinal unidades en la Base de Datos.',
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 40),
            OutlinedButton.icon(
              onPressed: () {
                Navigator.of(context).popUntil((route) => route.isFirst);
              },
              icon: const Icon(Icons.home),
              label: const Text('Volver al Inicio'),
            ),
          ],
        ),
      ),
    );
  }
}
