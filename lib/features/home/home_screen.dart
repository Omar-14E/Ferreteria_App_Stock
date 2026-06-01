import 'package:flutter/material.dart';
import '../scanner_ia/camera_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100], // Fondo claro para resaltar las tarjetas
      appBar: AppBar(
        title: const Text('Ferretería Santos Herrera', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
        backgroundColor: Theme.of(context).colorScheme.primary,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Panel de Control', style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
            const SizedBox(height: 5),
            Text('Bienvenido al sistema de inventario por IA', style: TextStyle(fontSize: 16, color: Colors.grey[600])),
            const SizedBox(height: 30),

            Row(
              children: [
                Expanded(child: _buildStatCard('Stock Total', '1,240', Icons.inventory, Colors.blue)),
                const SizedBox(width: 15),
                Expanded(child: _buildStatCard('Escaneos Hoy', '24', Icons.camera_alt, Colors.green)),
              ],
            ),
            const SizedBox(height: 30),

            const Text('Acciones Rápidas', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            const SizedBox(height: 15),

            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const CameraScreen()));
              },
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(30),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Theme.of(context).colorScheme.primary, Colors.redAccent],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.red.withOpacity(0.3), 
                      blurRadius: 15, 
                      offset: const Offset(0, 8)
                    )
                  ]
                ),
                child: const Column(
                  children: [
                    Icon(Icons.document_scanner, size: 60, color: Colors.white),
                    SizedBox(height: 15),
                    Text('Iniciar Escaneo con IA', style: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold)),
                    SizedBox(height: 5),
                    Text('Activar visor y procesamiento', style: TextStyle(color: Colors.white70, fontSize: 14)),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStatCard(String title, String value, IconData icon, Color color) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05), 
            blurRadius: 10, 
            offset: const Offset(0, 5)
          )
        ]
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, size: 32, color: color),
          const SizedBox(height: 15),
          Text(value, style: const TextStyle(fontSize: 26, fontWeight: FontWeight.bold)),
          Text(title, style: TextStyle(fontSize: 14, color: Colors.grey[600])),
        ],
      ),
    );
  }
}