import 'package:flutter/material.dart';
import '../widgets/encabezado_perfil.dart';
import '../widgets/seccion_mas_info.dart';
import '../widgets/fila_dato.dart';

// Pantalla principal: un fondo lavanda con la tarjeta blanca al centro.
// Es StatelessWidget porque su contenido no cambia.
class PerfilScreen extends StatelessWidget {
  const PerfilScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEDE7F6), // Lavanda pálido
      body: Center(
        // Permite bajar con scroll si la pantalla es pequeña
        child: SingleChildScrollView(
          // La tarjeta: caja blanca con esquinas redondeadas
          child: Container(
            width: 360,
            margin: const EdgeInsets.all(20),
            padding: const EdgeInsets.all(28),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
            ),
            // Column pone los elementos uno debajo del otro
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start, // A la izquierda
              children: [
                EncabezadoPerfil(),
                SizedBox(height: 24), // Espacio vacío
                FilaDato(icono: Icons.place_outlined, texto: 'Occidente, Costa Rica'),
                FilaDato(icono: Icons.mail_outline, texto: 'ger2135u@gmail.com'),
                FilaDato(icono: Icons.cake_outlined, texto: '20 años'),
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

