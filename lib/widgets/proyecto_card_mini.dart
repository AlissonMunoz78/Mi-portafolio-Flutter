import 'package:flutter/material.dart';
import '../screens/project_detail.dart';

class ProyectoCardMini extends StatelessWidget {
  final String titulo;
  final IconData icono;
  final String descripcion;
  final String tecnologias;
  final String estado;

  const ProyectoCardMini({
    super.key,
    required this.titulo,
    required this.icono,
    this.descripcion = '',
    this.tecnologias = '',
    this.estado = '',
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(16),
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (_) => ProjectDetail(
              titulo: titulo,
              descripcion: descripcion,
              tecnologias: tecnologias,
              estado: estado,
            ),
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              blurRadius: 10,
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 30,
              backgroundColor: Colors.blue[50],
              child: Icon(icono, size: 30, color: Colors.blue[700]),
            ),
            const SizedBox(height: 12),
            Text(
              titulo,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
