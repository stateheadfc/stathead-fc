import 'package:flutter/material.dart';
import 'selection_screen.dart'; // Asegúrate de que apunte a la ruta correcta de tu SelectionScreen

class LeagueSelectScreen extends StatelessWidget {
  const LeagueSelectScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stathead FC - Selecciona una Liga'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              '¿Qué liga deseas analizar hoy?',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 12),
            const Text(
              'Selecciona una opción para filtrar estadísticas y jugadores.',
              style: TextStyle(fontSize: 14, color: Colors.grey),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 40),
            
            // Botón para MLS
            _buildLeagueButton(
              context,
              leagueName: 'MLS',
              subtitle: 'Major League Soccer',
              color: Colors.indigo.shade800,
              icon: Icons.sports_soccer,
            ),
            const SizedBox(height: 20),
            
            // Botón para Liga MX
            _buildLeagueButton(
              context,
              leagueName: 'Liga MX',
              subtitle: 'LIGA BBVA MX',
              color: Colors.green.shade800,
              icon: Icons.shield,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildLeagueButton(
    BuildContext context, {
    required String leagueName,
    required String subtitle,
    required Color color,
    required IconData icon,
  }) {
    return SizedBox(
      width: double.infinity,
      height: 75,
      child: ElevatedButton(
        onPressed: () {
          // Navegamos a la pantalla de selección pasándole la liga elegida
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => SelectionScreen(selectedLeague: leagueName),
            ),
          );
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          elevation: 4,
        ),
        child: Row(
          children: [
            Icon(icon, color: Colors.white, size: 32),
            const SizedBox(width: 20),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  leagueName,
                  style: const TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  subtitle,
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.white.withOpacity(0.8),
                  ),
                ),
              ],
            ),
            const Spacer(),
            const Icon(Icons.arrow_forward_ios, color: Colors.white, size: 18),
          ],
        ),
      ),
    );
  }
}