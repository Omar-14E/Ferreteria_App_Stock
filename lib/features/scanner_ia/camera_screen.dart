import 'package:flutter/material.dart';
import 'results_screen.dart';

class CameraScreen extends StatelessWidget {
  const CameraScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text('Escaneando...', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.transparent,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.redAccent, width: 2),
                ),
                width: 300,
                height: 400,
                child: const Center(
                  child: Text('Encuadre de IA\n(Simulación de Cámara)', 
                    textAlign: TextAlign.center, 
                    style: TextStyle(color: Colors.white70, fontSize: 18)),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: FloatingActionButton.extended(
              onPressed: () {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const ResultsScreen()));
              },
              icon: const Icon(Icons.memory),
              label: const Text('Procesar Imagen'),
              backgroundColor: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}