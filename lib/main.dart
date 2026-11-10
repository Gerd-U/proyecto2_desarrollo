import 'package:flutter/material.dart';
import 'screens/perfil_screen.dart';

void main() {
  runApp(const MiApp());
}

class MiApp extends StatelessWidget {
  const MiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mi tarjeta',
      home: PerfilScreen(),
    );
  }
}
