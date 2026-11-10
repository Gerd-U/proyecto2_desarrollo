import 'package:flutter/material.dart';
import '../widgets/encabezado_perfil.dart';
import '../widgets/seccion_mas_info.dart';
import '../widgets/fila_dato.dart';

class PerfilScreen extends StatelessWidget {
  const PerfilScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEDE7F6),
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            width: 360,
            margin: const EdgeInsets.all(20),
            padding: const EdgeInsets.all(28),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
            ),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                EncabezadoPerfil(),
                SizedBox(height: 24),
                FilaDato(icono: Icons.place_outlined, texto: 'San Ramón, Costa Rica'),
                FilaDato(icono: Icons.mail_outline, texto: 'valeria.mora@example.com'),
                FilaDato(icono: Icons.cake_outlined, texto: '21 años'),
                SizedBox(height: 20),
                SeccionMasInfo(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

