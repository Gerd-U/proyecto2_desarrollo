import 'package:flutter/material.dart';
import 'screens/perfil_screen.dart';

// Punto de entrada: Flutter empieza a ejecutar desde aquí.
void main() {
  runApp(const MiApp());
}

// Widget raíz de la app. No cambia nunca, por eso es StatelessWidget.
class MiApp extends StatelessWidget {
  const MiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false, // Quita la etiqueta "DEBUG"
      title: 'Mi tarjeta',
      home: PerfilScreen(), // Primera (y única) pantalla
    );
  }
}
