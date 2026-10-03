import 'package:flutter/material.dart';
import 'player_model.dart';
import 'player_service.dart';

class PlayersScreen extends StatefulWidget {
  const PlayersScreen({Key? key}) : super(key: key);

  @override
  State<PlayersScreen> createState() => _PlayersScreenState();
}

class _PlayersScreenState extends State<PlayersScreen> {
  final PlayerService _playerService = PlayerService();
  
  List<Player> _allPlayers = [];
  List<Player> _filteredPlayers = [];
  bool _isLoading = true;
  String? _errorMessage;
  
  final TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _loadPlayers();
  }

  Future<void> _loadPlayers() async {
    setState(() {
      _isLoading = true;
      _errorMessage = null;
    });

    try {
      final players = await _playerService.fetchPlayers();
      setState(() {
        _allPlayers = players;
        _filteredPlayers = players;
        _isLoading = false;
      });
    } catch (e) {
      setState(() {
        _errorMessage = e.toString();
        _isLoading = false;
      });
    }
  }

  void _onSearchChanged(String query) async {
    final results = await _playerService.searchPlayers(query, _allPlayers);
    setState(() {
      _filteredPlayers = results;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MLS Players Compare'),
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
      ),
      body: Column(
        children: [
          // Barra de búsqueda
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextField(
              controller: _searchController,
              onChanged: _onSearchChanged,
              decoration: InputDecoration(
                hintText: 'Buscar por jugador o equipo...',
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                filled: true,
                fillColor: Colors.grey[100],
              ),
            ),
          ),
          
          // Contenido principal
          Expanded(
            child: _isLoading
                ? const Center(child: CircularProgressIndicator())
                : _errorMessage != null
                    ? Center(
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(Icons.error_outline, size: 60, color: Colors.red),
                              const SizedBox(height: 10),
                              Text('Ocurrió un error:\n$_errorMessage', textAlign: TextAlign.center),
                              const SizedBox(height: 20),
                              ElevatedButton(
                                onPressed: _loadPlayers,
                                child: const Text('Reintentar'),
                              ),
                            ],
                          ),
                        ),
                      )
                    : _filteredPlayers.isEmpty
                        ? const Center(child: Text('No se encontraron jugadores.'))
                        : ListView.builder(
                            itemCount: _filteredPlayers.length,
                            itemBuilder: (context, index) {
                              final player = _filteredPlayers[index];
                              return Card(
                                margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                                elevation: 2,
                                child: ListTile(
                                  leading: CircleAvatar(
                                    backgroundColor: Colors.indigo.shade50,
                                    backgroundImage: player.photoUrl != null 
                                        ? NetworkImage(player.photoUrl!) 
                                        : null,
                                    child: player.photoUrl == null 
                                        ? Text(player.initials) 
                                        : null,
                                  ),
                                  title: Text(
                                    player.name, 
                                    style: const TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  subtitle: Text('${player.team} • ${player.country}'),
                                  trailing: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text('⚽ Goles: ${player.goals}', style: const TextStyle(fontWeight: FontWeight.w600)),
                                      Text('🎯 Asist: ${player.assists}', style: TextStyle(color: Colors.grey[600], fontSize: 12)),
                                    ],
                                  ),
                                ),
                              );
                            },
                          ),
          ),
        ],
      ),
    );
  }
}