import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../widgets/proyecto_card.dart';

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
          child: SingleChildScrollView(
            padding: const EdgeInsets.fromLTRB(16, 24, 16, 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Mis Proyectos',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.w800,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'Una vista limpia de mis trabajos más recientes.',
                  style: TextStyle(
                    fontSize: 15,
                    color: Color.fromARGB(255, 55, 55, 56),
                  ),
                ),
                SizedBox(height: 20),
                ProyectoCard(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}