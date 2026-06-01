import 'package:flutter/material.dart';
import '../sync_db/sync_screen.dart';

class ResultsScreen extends StatefulWidget {
  const ResultsScreen({super.key});

  @override
  State<ResultsScreen> createState() => _ResultsScreenState();
}

class _ResultsScreenState extends State<ResultsScreen> {
  int cantidadDetectada = 14;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Resultado del Conteo')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Herramientas detectadas:',
              style: TextStyle(fontSize: 20),
            ),
            Text(
              '$cantidadDetectada',
              style: const TextStyle(
                fontSize: 80,
                fontWeight: FontWeight.bold,
                color: Colors.blueAccent,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Ajuste Manual Preventivo:',
              style: TextStyle(color: Colors.grey),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () => setState(() => cantidadDetectada--),
                  icon: const Icon(
                    Icons.remove_circle_outline,
                    size: 50,
                    color: Colors.red,
                  ),
                ),
                const SizedBox(width: 40),
                IconButton(
                  onPressed: () => setState(() => cantidadDetectada++),
                  icon: const Icon(
                    Icons.add_circle_outline,
                    size: 50,
                    color: Colors.green,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 60),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        SyncScreen(cantidadFinal: cantidadDetectada),
                  ),
                );
              },
              icon: const Icon(Icons.cloud_upload),
              label: const Text(
                'Sincronizar Datos',
                style: TextStyle(fontSize: 18),
              ),
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                  vertical: 15,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
