import 'package:flutter/material.dart';

// Botón "Ver más" que muestra u oculta información extra.
// Es StatefulWidget porque recuerda si la sección está abierta o cerrada.
class SeccionMasInfo extends StatefulWidget {
  const SeccionMasInfo({super.key});

  @override
  State<SeccionMasInfo> createState() => _SeccionMasInfoState();
}

class _SeccionMasInfoState extends State<SeccionMasInfo> {
  bool abierto = false; // El estado: ¿se ve la información extra?

  // Estilo de los títulos pequeños (se usa dos veces)
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
        // Botón que ocupa todo el ancho de la tarjeta
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
              // setState cambia el valor y Flutter vuelve a dibujar
              setState(() {
                abierto = !abierto; // true pasa a false y al revés
              });
            },
            // El texto cambia según el estado
            child: Text(abierto ? 'Ver menos' : 'Ver más'),
          ),
        ),

        // Esta caja solo aparece cuando "abierto" es true
        if (abierto)
          Container(
            width: double.infinity,
            margin: const EdgeInsets.only(top: 16),
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: const Color(0xFFF3EEFA), // Lavanda muy claro
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('INTERESES', style: estiloTitulo),
                const SizedBox(height: 4),
                const Text('Desarrollo de videojuegos (he participado en game jams) y proyectos web creativos'),
                const SizedBox(height: 14),
                Text('TECNOLOGÍAS QUE HE USADO', style: estiloTitulo),
                const SizedBox(height: 4),
                const Text('Java, React, .NET, SQL Server, HTML y CSS'),
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
