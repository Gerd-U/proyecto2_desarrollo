import 'package:flutter/material.dart';
import '../widgets/encabezado_perfil.dart';
import '../widgets/seccion_mas_info.dart';

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

// Una fila con ícono + texto. Row pone los elementos uno al lado del otro.
class FilaDato extends StatelessWidget {
  final IconData icono;
  final String texto;

  const FilaDato({super.key, required this.icono, required this.texto});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Row(
        children: [
          Icon(icono, size: 20, color: const Color(0xFF6A3FB5)),
          const SizedBox(width: 12),
          // Expanded deja que el texto use el espacio que sobra sin salirse
          Expanded(
            child: Text(texto, style: const TextStyle(fontSize: 15, color: Color(0xFF2E1A47))),
          ),
        ],
      ),
    );
  }
}
