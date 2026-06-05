import 'package:flutter/material.dart';

class ProyectoCard extends StatelessWidget {
  const ProyectoCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: const Color(0xFFFDFCFF),
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: const Color(0xFFB79CFF).withValues(alpha: 0.18),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.network(
              'https://picsum.photos/400/200',
              height: 150,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),

          const SizedBox(height: 16),

          Text(
            'Sistema de gestión del Museo de Ciencia Natural',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: const Color(0xFF6F4BC2),
            ),
          ),

          const SizedBox(height: 8),

          Text(
            'Aplicación web para gestionar inventario, visitantes y donaciones del museo.'
            'También permite llevar el registro de pasantes y reservas para grupo',
            style: TextStyle(
              fontSize: 14,
              color: const Color.fromARGB(255, 120, 118, 122),
              height: 1.5,
            ),
          ),

          const SizedBox(height: 16),

          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: [
              Chip(
                label: const Text('React'),
                backgroundColor: Colors.blue[50],
                labelStyle: TextStyle(
                  color: const Color.fromRGBO(25, 118, 210, 1),
                  fontSize: 12,
                ),
              ),
              Chip(
                label: const Text('Node.js'),
                backgroundColor: Colors.blue[50],
                labelStyle: TextStyle(
                  color: Colors.blue[700],
                  fontSize: 12,
                ),
              ),
              Chip(
                label: const Text('Tailwind CSS'),
                backgroundColor: Colors.blue[50],
                labelStyle: TextStyle(
                  color: Colors.blue[700],
                  fontSize: 12,
                ),
              ),
            ],
          ),

          const SizedBox(height: 12),

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Progreso: 75%',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey[600],
                ),
              ),
              const SizedBox(height: 4),
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: LinearProgressIndicator(
                  value: 0.75,
                  backgroundColor: Colors.grey[300],
                  valueColor: const AlwaysStoppedAnimation<Color>(Colors.yellow),
                  minHeight: 8,
                ),
              ),
            ],
          ),

          const SizedBox(height: 12),

          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 12,
              vertical: 6,
            ),
            decoration: BoxDecoration(
              color: const Color(0xFFE9DEFF),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text(
              'Flutter • Dart • Firebase',
              style: TextStyle(
                fontSize: 12,
                color: const Color.fromARGB(255, 49, 51, 180),
                fontWeight: FontWeight.w500,
              ),
            ),
          ),

          const SizedBox(height: 12),
          Text(
            'Estado: En proceso...',
            style: TextStyle(
              fontSize: 12,
              color: const Color.fromARGB(255, 117, 205, 157),
              fontWeight: FontWeight.w500,
            ),
          ),

          const SizedBox(height: 8),

          Row(
            children: [
              Icon(
                Icons.calendar_today,
                size: 16,
                color: const Color.fromARGB(255, 2, 2, 2),
              ),
              const SizedBox(width: 4),
              Text(
                'Julio 2026',
                style: TextStyle(
                  fontSize: 12,
                  color: const Color.fromARGB(255, 14, 13, 13),
                ),
              ),
            ],
          ),

          const SizedBox(height: 16),

          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton.icon(
                onPressed: () {
                  debugPrint('Ver código presionado');
                },
                icon: const Icon(Icons.code, size: 18),
                label: const Text('Código'),
              ),
              const SizedBox(width: 8),
              ElevatedButton.icon(
                onPressed: () {
                  debugPrint('Ver demo presionado');
                },
                icon: const Icon(Icons.launch, size: 18),
                label: const Text('Demo'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

