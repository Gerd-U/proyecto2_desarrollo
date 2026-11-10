import 'package:flutter/material.dart';

class EncabezadoPerfil extends StatelessWidget {
  const EncabezadoPerfil({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CircleAvatar(
          radius: 32,
          backgroundColor: const Color(0xFF6A3FB5),
          backgroundImage: const NetworkImage('https://fastly.picsum.photos/id/454/200/200.jpg?hmac=N13wDge6Ku6Eg_LxRRsrfzC1A4ZkpCScOEp-hH-PwHg'),
          onBackgroundImageError: (error, stackTrace) {},
        ),
        const SizedBox(height: 16),
        const Text(
          'Valeria Mora Solano',
          style: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.w800,
            color: Color(0xFF2E1A47),
          ),
        ),
        const SizedBox(height: 6),
        const Text(
          'Estudiante de Informática Empresarial y aficionada a la fotografía',
          style: TextStyle(fontSize: 15, height: 1.4, color: Color(0xFF6B5E7D)),
        ),
      ],
    );
  }
}
