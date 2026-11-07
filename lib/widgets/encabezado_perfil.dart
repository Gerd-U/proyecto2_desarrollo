import 'package:flutter/material.dart';

// Encabezado: avatar con iniciales + nombre + frase.
// Es StatelessWidget porque solo muestra datos fijos.
class EncabezadoPerfil extends StatelessWidget {
  const EncabezadoPerfil({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Círculo morado con las iniciales (sin imágenes)
        CircleAvatar(
          radius: 32,
          backgroundColor: Color(0xFF6A3FB5),
          child: Text(
            'GU',
            style: TextStyle(
              color: Colors.white,
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(height: 16),
        // Nombre: el texto más grande y pesado de la tarjeta
        Text(
          'Gerald Urbina Quesada',
          style: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.w800,
            color: Color(0xFF2E1A47), // Morado casi negro
          ),
        ),
        SizedBox(height: 6),
        // Frase: más pequeña y de color suave
        Text(
          'Estudiante de Informática Empresarial y aficionado a los videojuegos',
          style: TextStyle(fontSize: 15, height: 1.4, color: Color(0xFF6B5E7D)),
        ),
      ],
    );
  }
}
