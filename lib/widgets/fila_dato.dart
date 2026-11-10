import 'package:flutter/material.dart';

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
