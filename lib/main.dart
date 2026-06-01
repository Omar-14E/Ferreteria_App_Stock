import 'package:flutter/material.dart';
import 'features/home/home_screen.dart';

void main() {
  runApp(const FerreteriaApp());
}

class FerreteriaApp extends StatelessWidget {
  const FerreteriaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Control Stock IA',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFFC62828)), // Rojo institucional
        useMaterial3: true,
      ),
      // Este 'builder' crea el efecto de celular en tu navegador web
      builder: (context, child) {
        return Scaffold(
          backgroundColor: Colors.grey[300], // Fondo gris para que resalte el "celular"
          body: Center(
            child: Container(
              width: 390, // Ancho estándar de un celular moderno
              height: 844, // Alto estándar de un celular moderno
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30), // Bordes curvos del celular
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.3),
                    blurRadius: 15,
                    spreadRadius: 5,
                    offset: const Offset(0, 5),
                  )
                ],
                border: Border.all(color: Colors.black87, width: 8), // Marco negro
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(22), // Recorta las esquinas interiores
                child: child!,
              ),
            ),
          ),
        );
      },
      home: const HomeScreen(),
    );
  }
}