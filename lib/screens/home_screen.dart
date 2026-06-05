import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../widgets/proyecto_card_mini.dart';
import '../widgets/proyecto_expandible.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mi Portafolio'),
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Color.fromARGB(255, 142, 109, 233),
          statusBarIconBrightness: Brightness.light,
          statusBarBrightness: Brightness.dark,
        ),
      ),

      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color(0xFFFDFBFF), Color(0xFFF0E9FF)],
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Mis Proyectos',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 31, 41, 55),
                  ),
                ),
                const SizedBox(height: 16),
                const ProyectoExpandible(
                  titulo: 'Proyecto Expandible',
                  descripcion:
                    'Resumen del proyecto expandible que muestra más detalles al desplegarse.',
                  tecnologias: 'Flutter • Dart',
                  detalles:
                    'Este proyecto incluye autenticación, base de datos y un panel de administración.',
                ),
                const SizedBox(height: 12),
                Expanded(
                  child: GridView.count(
                    crossAxisCount: 2,
                    crossAxisSpacing: 12,
                    mainAxisSpacing: 12,
                    childAspectRatio: 0.85,
                    children: const [
                      ProyectoCardMini(
                        titulo: 'Sistema de gestión del Museo',
                        icono: Icons.museum,
                        descripcion:
                            'Aplicación web para gestionar inventario, visitantes y donaciones del museo. También permite llevar el registro de pasantes y reservas para grupos.',
                        tecnologias: 'React • Node.js • Tailwind CSS',
                        estado: 'En proceso',
                      ),
                      ProyectoCardMini(
                        titulo: 'App de Tareas',
                        icono: Icons.phone_android,
                        descripcion:
                            'Aplicación móvil para gestionar tareas diarias con recordatorios.',
                        tecnologias: 'Flutter • SQLite',
                        estado: 'En desarrollo',
                      ),
                      ProyectoCardMini(
                        titulo: 'Tienda E-commerce',
                        icono: Icons.shopping_cart,
                        descripcion:
                            'Tienda virtual con carrito de compras y pasarela de pagos.',
                        tecnologias: 'React • Node.js • MongoDB',
                        estado: 'En pausa',
                      ),
                      ProyectoCardMini(
                        titulo: 'Juego Casual',
                        icono: Icons.videogame_asset,
                        descripcion: 'Juego casual para dispositivos móviles.',
                        tecnologias: 'Unity • C#',
                        estado: 'Completado',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}