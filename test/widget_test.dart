// Prueba básica de widgets para la aplicación de Ferretería.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

// Asegúrate de que el nombre del paquete coincida con el nombre que le diste al proyecto
import 'package:ferreteria_app/main.dart'; 

void main() {
  testWidgets('Verificar que el Dashboard cargue correctamente', (WidgetTester tester) async {
    // Construye nuestra aplicación y lanza un frame.
    await tester.pumpWidget(const FerreteriaApp());

    // Verificamos que los textos principales de nuestra nueva interfaz existan en la pantalla
    expect(find.text('Panel de Control'), findsOneWidget);
    expect(find.text('Ferretería Santos Herrera'), findsWidgets);

    // Verificamos que el botón del contador viejo ya no exista
    expect(find.byIcon(Icons.add), findsNothing);
  });
}