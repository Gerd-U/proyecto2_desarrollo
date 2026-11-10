import 'package:flutter/material.dart';

class SeccionMasInfo extends StatefulWidget {
  const SeccionMasInfo({super.key});

  @override
  State<SeccionMasInfo> createState() => _SeccionMasInfoState();
}

class _SeccionMasInfoState extends State<SeccionMasInfo> {
  bool abierto = false;

  final estiloTitulo = const TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.bold,
    letterSpacing: 1,
    color: Color(0xFF6A3FB5),
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: double.infinity,
          child: FilledButton(
            style: FilledButton.styleFrom(
              backgroundColor: const Color(0xFF6A3FB5),
              padding: const EdgeInsets.symmetric(vertical: 16),
              textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            ),
            onPressed: () {
              setState(() {
                abierto = !abierto;
              });
            },
            child: Text(abierto ? 'Ver menos' : 'Ver más'),
          ),
        ),

        if (abierto)
          Container(
            width: double.infinity,
            margin: const EdgeInsets.only(top: 16),
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: const Color(0xFFF3EEFA),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('INTERESES', style: estiloTitulo),
                const SizedBox(height: 4),
                const Text('Diseño de interfaces y fotografía de paisajes'),
                const SizedBox(height: 14),
                Text('TECNOLOGÍAS QUE HE USADO', style: estiloTitulo),
                const SizedBox(height: 4),
                const Text('Python, JavaScript, MySQL, HTML y CSS'),
                const SizedBox(height: 14),
                const Text(
                  'Actualmente aprendiendo Flutter',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
      ],
    );
  }
}
