import 'package:flutter/material.dart';
import 'player_model.dart';
import 'player_service.dart';
import 'package:screenshot/screenshot.dart';
import 'package:share_plus/share_plus.dart';
import 'package:fl_chart/fl_chart.dart';

// --- WIDGET PARA ANIMAR NÚMEROS ---
class AnimatedCounter extends StatelessWidget {
  final double value;
  final String format;
  final TextStyle style;

  const AnimatedCounter(this.value, {super.key, this.format = 'decimal', required this.style});

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<double>(
      tween: Tween<double>(begin: 0, end: value),
      duration: const Duration(milliseconds: 2400),
      curve: Curves.easeInOutCubic,
      builder: (context, val, child) {
        String display = format == 'decimal' ? val.toStringAsFixed(1) : val.toInt().toString();
        return Text(display, style: style);
      },
    );
  }
}

// --- CLASE DE TRADUCCIÓN (INGLÉS / ESPAÑOL) ---
// --- CLASE DE TRADUCCIÓN (INGLÉS / ESPAÑOL) ---
class AppLocalizations {
  final String locale;
  AppLocalizations(this.locale);

  static const Map<String, Map<String, String>> _localizedValues = {
    'es': {
      'appTitle': 'Stathead FC',
      'loading': 'Cargando estadísticas...',
      'searchHint': 'Busca por jugador, equipo o posición...',
      'noPlayers': 'No se encontraron jugadores',
      'searchPrompt': 'Escribe arriba para buscar por jugador, equipo o posición',
      'compareButton': 'Compara un jugador',
      'teamTitle': 'EQUIPO',
      'mainPlayer': 'JUGADOR PRINCIPAL',
      'comparison': 'COMPARACIÓN',
      'valLabel': 'Val: ',
      'ratingTitle': 'Valoración Media',
      'keyPasses': 'Pases Clave',
      'matches': 'Partidos Jugados',
      'lineups': 'Apariciones en Once Inicial',
      'minutes': 'Minutos Jugados',
      'timeCat': 'TIEMPO DE JUEGO',
      'attackCat': 'ATAQUE Y TIROS',
      'goals': 'Goles',
      'assists': 'Asistencias',
      'shotsOnTarget': 'Disparos a Puerta',
      'shotsTotal': 'Disparos Totales',
      'dribblesAttempt': 'Intentos de Regate',
      'dribblesSuccess': 'Regates Exitosos',
      'duelsCat': 'DUELOS',
      'duelsTotal': 'Duelos Totales',
      'duelsWon': 'Duelos Ganados',
      'passesCat': 'PASES',
      'passesTotal': 'Pases Totales',
      'passesKey': 'Pases Clave',
      'defenseCat': 'DEFENSA',
      'passesAccuracy': 'Precisión de Pases',
      'penaltyScored': 'Penales Anotados',
      'penaltyMissed': 'Penales Fallados',
      'penaltySaved': 'Penales Detenidos',
      'tackles': 'Entradas (Tackles)',
      'interceptions': 'Intercepciones',
      'blocks': 'Bloqueos Defensivos',
      'disciplineCat': 'DISCIPLINA',
      'foulsCommitted': 'Faltas Cometidas',
      'foulsDrawn': 'Faltas Recibidas',
      'yellowCards': 'Tarjetas Amarillas',
      'redCards': 'Tarjetas Rojas',
      'totalCards': 'Tarjetas Totales',
      'goalkeepersCat': 'PORTEROS',
      'saves': 'Atajadas',
      'goalsConceded': 'Goles Concedidos',
      'change': 'Cambiar',
      'errorConnect': 'Error al conectar: ',
      'searchOrChange': 'Buscar o Cambiar Jugador',
      'selectLanguage': 'Selecciona tu Idioma / Select Language',
      'searchTitle': 'Stathead FC - Búsqueda',
      'valuation': 'Valoración',
      'randomVs': 'VS Aleatorio',
      'top20Stars': 'Top 20 Estrellas (H2H)',
      'shareMatchup': 'Compartir Matchup',
      'matchupCardTitle': 'Tarjeta Matchup',
      'cancel': 'Cancelar',
      'share': 'Compartir',
      'generating': 'Generando...',
      'shareText': '¡Mira este cara a cara en Stathead FC! ⚽🔥',
      'barChartTitle': 'COMPARATIVA DE ATRIBUTOS',
      'season2022': '2022',
      'season2023': '2023',
      'season2024': '2024',
      'season2025': '2025',
      'season2026': '2026',
      'seasonAll': 'TODAS (ALL)',
      'selectSeason': 'Seleccionar Temporada',
      'seeTop10RandomMatchup': 'See top 10 random H2H matchup card',
      'seeTop20RandomMatchup': 'See top 20 random H2H matchup card',
      'verTop10RandomMatchup': 'ver top10 random H2H tarjeta matchup',
      'verTop20RandomMatchup': 'ver top20 random H2H tarjeta matchup',
      'seasonWord': 'Temporada',
      'careerWord': 'Carrera',
      'posAttacker': 'Delantero',
      'posMidfielder': 'Mediocampista',
      'posDefender': 'Defensa',
      'posGoalkeeper': 'Portero',
    },
    'en': {
      'appTitle': 'Stathead FC',
      'loading': 'Loading statistics...',
      'searchHint': 'Search by player, team or position...',
      'noPlayers': 'No players found',
      'searchPrompt': 'Type above to search by player, team or position',
      'compareButton': 'Compare a player',
      'teamTitle': 'TEAM',
      'mainPlayer': 'MAIN PLAYER',
      'comparison': 'COMPARISON',
      'valLabel': 'Val: ',
      'ratingTitle': 'Average Rating',
      'keyPasses': 'Key Passes',
      'matches': 'Matches Played',
      'lineups': 'Lineups',
      'minutes': 'Minutes Played',
      'timeCat': 'PLAYING TIME',
      'attackCat': 'ATTACK & SHOTS',
      'goals': 'Goals',
      'assists': 'Assists',
      'shotsOnTarget': 'Shots on Target',
      'shotsTotal': 'Total Shots',
      'dribblesAttempt': 'Dribble Attempts',
      'dribblesSuccess': 'Successful Dribbles',
      'duelsCat': 'DUELS',
      'duelsTotal': 'Total Duels',
      'duelsWon': 'Duelos Won',
      'passesCat': 'PASSES',
      'passesTotal': 'Total Passes',
      'passesKey': 'Key Passes',
      'passesAccuracy': 'Pass Accuracy',
      'penaltyScored': 'Penalties Scored',
      'penaltyMissed': 'Penalties Missed',
      'penaltySaved': 'Penalties Stopped',
      'defenseCat': 'DEFENSE',
      'tackles': 'Tackles',
      'interceptions': 'Interceptions',
      'blocks': 'Blocks',
      'disciplineCat': 'DISCIPLINE',
      'foulsCommitted': 'Fouls Committed',
      'foulsDrawn': 'Fouls Drawn',
      'yellowCards': 'Yellow Cards',
      'redCards': 'Red Cards',
      'totalCards': 'Total Cards',
      'goalkeepersCat': 'GOALKEEPERS',
      'saves': 'Saves',
      'goalsConceded': 'Goals Conceded',
      'change': 'Change',
      'errorConnect': 'Connection error: ',
      'searchOrChange': 'Search or Change Player',
      'selectLanguage': 'Select Language / Selecciona tu Idioma',
      'searchTitle': 'Stathead FC - Search',
      'valuation': 'Rating',
      'randomVs': 'Random VS',
      'top20Stars': 'Top 20 Stars (H2H)',
      'shareMatchup': 'Share Matchup',
      'matchupCardTitle': 'Matchup Card',
      'cancel': 'Cancel',
      'share': 'Share',
      'generating': 'Generating...',
      'shareText': 'Check out this head-to-head on Stathead FC! ⚽🔥',
      'barChartTitle': 'ATTRIBUTES COMPARISON',
      'season2022': '2022',
      'season2023': '2023',
      'season2024': '2024',
      'season2025': '2025',
      'season2026': '2026',
      'seasonAll': 'ALL',
      'selectSeason': 'Select Season',
      'seeTop10RandomMatchup': 'See top 10 random H2H matchup card',
      'seeTop20RandomMatchup': 'See top 20 random H2H matchup card',
      'verTop10RandomMatchup': 'ver top10 random H2H tarjeta matchup',
      'verTop20RandomMatchup': 'ver top20 random H2H tarjeta matchup',
      'seasonWord': 'Season',
      'careerWord': 'Career',
      'posAttacker': 'Attacker',
      'posMidfielder': 'Midfielder',
      'posDefender': 'Defender',
      'posGoalkeeper': 'Goalkeeper',
    }
  };
  String translatePosition(String position) {
    final posLower = position.toLowerCase().trim();
    if (posLower.contains('attack') || posLower.contains('forward')) {
      return get('posAttacker');
    } else if (posLower.contains('midfield')) {
      return get('posMidfielder');
    } else if (posLower.contains('defend') || posLower.contains('defens')) {
      return get('posDefender');
    } else if (posLower.contains('goal') || posLower.contains('keeper')) {
      return get('posGoalkeeper');
    }
    return position; // Devuelve la original si no coincide con ninguna
  }

  // Método getter para obtener la cadena traducida (ahora SÍ está dentro de la clase)
  String get(String key) {
    return _localizedValues[locale]?[key] ?? _localizedValues['en']?[key] ?? key;
  }
}

final Map<String, String> teamLogos = {
  // --- MLS Teams ---
  'Philadelphia Union': 'https://media.api-sports.io/football/teams/1619.png',
  'Inter Miami': 'https://media.api-sports.io/football/teams/16155.png',
  'Charlotte FC': 'https://media.api-sports.io/football/teams/18445.png',
  'FC Dallas': 'https://media.api-sports.io/football/teams/1609.png',
  'LA Galaxy': 'https://media.api-sports.io/football/teams/1610.png',
  'Los Angeles FC': 'https://media.api-sports.io/football/teams/1616.png',
  'Austin FC': 'https://media.api-sports.io/football/teams/1608.png',
  'New York City FC': 'https://media.api-sports.io/football/teams/1613.png',
  'Seattle Sounders': 'https://media.api-sports.io/football/teams/1622.png',
  'Seattle Sounders FC': 'https://media.api-sports.io/football/teams/1622.png',
  'Orlando City': 'https://media.api-sports.io/football/teams/1618.png',
  'Orlando City SC': 'https://media.api-sports.io/football/teams/1618.png',
  'Atlanta United': 'https://media.api-sports.io/football/teams/1607.png',
  'Atlanta United FC': 'https://media.api-sports.io/football/teams/1607.png',
  'Columbus Crew': 'https://media.api-sports.io/football/teams/1611.png',
  'New York Red Bulls': 'https://media.api-sports.io/football/teams/1614.png',
  'CF Montreal': 'https://media.api-sports.io/football/teams/1612.png',
  'Toronto FC': 'https://media.api-sports.io/football/teams/1623.png',
  'DC United': 'https://media.api-sports.io/football/teams/1625.png',
  'D.C. United': 'https://media.api-sports.io/football/teams/1625.png',
  'New England Revolution': 'https://media.api-sports.io/football/teams/1617.png',
  'Nashville SC': 'https://media.api-sports.io/football/teams/1628.png',
  'FC Cincinnati': 'https://media.api-sports.io/football/teams/1654.png',
  'Chicago Fire': 'https://media.api-sports.io/football/teams/160.png',
  'Chicago Fire FC': 'https://media.api-sports.io/football/teams/160.png',
  'Houston Dynamo': 'https://media.api-sports.io/football/teams/1615.png',
  'Sporting Kansas City': 'https://media.api-sports.io/football/teams/1621.png',
  'Real Salt Lake': 'https://media.api-sports.io/football/teams/1620.png',
  'Minnesota United': 'https://media.api-sports.io/football/teams/1626.png',
  'Minnesota United FC': 'https://media.api-sports.io/football/teams/1626.png',
  'Colorado Rapids': 'https://media.api-sports.io/football/teams/1606.png',
  'Portland Timbers': 'https://media.api-sports.io/football/teams/1624.png',
  'Vancouver Whitecaps': 'https://media.api-sports.io/football/teams/1630.png',
  'San Jose Earthquakes': 'https://media.api-sports.io/football/teams/1621.png',
  'St. Louis CITY SC': 'https://media.api-sports.io/football/teams/25442.png',

  // --- Liga MX Teams ---
  'Club América': 'https://media.api-sports.io/football/teams/2280.png',
  'América': 'https://media.api-sports.io/football/teams/2280.png',
  'Cruz Azul': 'https://media.api-sports.io/football/teams/2285.png',
  'Guadalajara': 'https://media.api-sports.io/football/teams/2284.png',
  'Chivas': 'https://media.api-sports.io/football/teams/2284.png',
  'Monterrey': 'https://media.api-sports.io/football/teams/2288.png',
  'Tigres UANL': 'https://media.api-sports.io/football/teams/2295.png',
  'Tigres': 'https://media.api-sports.io/football/teams/2295.png',
  'Pumas UNAM': 'https://media.api-sports.io/football/teams/2291.png',
  'Pumas': 'https://media.api-sports.io/football/teams/2291.png',
  'Toluca': 'https://media.api-sports.io/football/teams/2296.png',
  'Santos Laguna': 'https://media.api-sports.io/football/teams/2293.png',
  'Atlas': 'https://media.api-sports.io/football/teams/2281.png',
  'Pachuca': 'https://media.api-sports.io/football/teams/2290.png',
  'Club León': 'https://media.api-sports.io/football/teams/2287.png',
  'León': 'https://media.api-sports.io/football/teams/2287.png',
  'Club Tijuana': 'https://media.api-sports.io/football/teams/2294.png',
  'Tijuana': 'https://media.api-sports.io/football/teams/2294.png',
  'Puebla': 'https://media.api-sports.io/football/teams/2292.png',
  'Juárez': 'https://media.api-sports.io/football/teams/2279.png',
  'FC Juárez': 'https://media.api-sports.io/football/teams/2279.png',
  'Mazatlán FC': 'https://media.api-sports.io/football/teams/11997.png',
  'Querétaro': 'https://media.api-sports.io/football/teams/2289.png',
  'San Luis': 'https://media.api-sports.io/football/teams/2286.png',
  'Atlético San Luis': 'https://media.api-sports.io/football/teams/2286.png',
};

String getTeamLogo(Player player) {
  if (player.teamBadgeUrl.trim().isNotEmpty) {
    return player.teamBadgeUrl;
  }
  if (teamLogos.containsKey(player.team)) {
    return teamLogos[player.team]!;
  }
  for (var entry in teamLogos.entries) {
    if (player.team.toLowerCase().contains(entry.key.toLowerCase()) || 
        entry.key.toLowerCase().contains(player.team.toLowerCase())) {
      return entry.value;
    }
  }
  return '';
}

String getCountryFlag(String country) {
  final Map<String, String> countryToCode = {
    // América
    'mexico': 'mx', 'mexic': 'mx', 'usa': 'us', 'united states': 'us', 'eeuu': 'us',
    'argentina': 'ar', 'brazil': 'br', 'brasil': 'br', 'colombia': 'co',
    'uruguay': 'uy', 'chile': 'cl', 'ecuador': 'ec', 'peru': 'pe', 'paraguay': 'py',
    'bolivia': 'bo', 'venezuela': 've', 'canada': 'ca', 'costa rica': 'cr',
    'panama': 'pa', 'honduras': 'hn', 'jamaica': 'jm',
    // Europa y África
    'spain': 'es', 'españa': 'es', 'france': 'fr', 'francia': 'fr',
    'england': 'gb', 'uk': 'gb', 'united kingdom': 'gb', 'italy': 'it', 'italia': 'it',
    'germany': 'de', 'alemania': 'de', 'portugal': 'pt', 'netherlands': 'nl', 'holanda': 'nl',
    'belgium': 'be', 'bélgica': 'be', 'denmark': 'dk', 'dinamarca': 'dk',
    'algeria': 'dz', 'argelia': 'dz', 'ghana': 'gh', 'albania': 'al',
  };
  
  final cleanCountry = country.toLowerCase().trim();
  final code = countryToCode[cleanCountry];
  if (code == null) return '';
  return code.toUpperCase().runes.map((int rune) => 
    String.fromCharCode(rune + 127397)
  ).join();
}

void main() => runApp(const MLSCompareApp());

class MLSCompareApp extends StatelessWidget {
  const MLSCompareApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Stathead FC',
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: const Color(0xFF0F172A),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF1E293B),
          elevation: 0,
        ),
        useMaterial3: true,
      ),
      home: const LanguageSelectScreen(),
    );
  }
}

class LanguageSelectScreen extends StatelessWidget {
  const LanguageSelectScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0F172A),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // --- LOGO MÁS GRANDE E IMPONENTE ---
              Image.asset(
                'assets/stathead_FC.jpg',
                width: 350,
                height: 350,
                fit: BoxFit.contain,
                errorBuilder: (_, __, ___) => const Text('⚽', style: TextStyle(fontSize: 70)),
              ),
              const SizedBox(height: 20),
              
              // --- TAGLINE BILINGÜE CON IGUAL PESO Y TAMAÑO ---
              const Text(
                'MLS vs Liga MX: Compara y domina las estadísticas',
                style: TextStyle(fontSize: 13, color: Colors.white, fontWeight: FontWeight.w600),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 5),
              const Text(
                'MLS vs Liga MX: Compare and master the stats',
                style: TextStyle(fontSize: 13, color: Color(0xFF94A3B8), fontWeight: FontWeight.w600),
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: 28),
              
              // Selector limpio y directo
              const Text(
                'Selecciona tu Idioma / Select Language', 
                style: TextStyle(fontSize: 12, color: Color(0xFF64748B), letterSpacing: 0.5),
              ),
              const SizedBox(height: 16),
              
              // Botón Español
              SizedBox(
                width: 240,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFEC4899),
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(vertical: 14),
                    elevation: 0,
                  ),
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (_) => const SplashScreen(locale: 'es')),
                    );
                  },
                  child: const Text('Español 🇪🇸', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                ),
              ),
              const SizedBox(height: 14),
              
              // Botón Inglés
              SizedBox(
                width: 240,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF1E293B),
                    foregroundColor: Colors.white,
                    side: const BorderSide(color: Color(0xFFEC4899), width: 1.5),
                    padding: const EdgeInsets.symmetric(vertical: 14),
                    elevation: 0,
                  ),
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (_) => const SplashScreen(locale: 'en')),
                    );
                  },
                  child: const Text('English 🇺🇸', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SplashScreen extends StatefulWidget {
  final String locale;
  const SplashScreen({super.key, required this.locale});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final PlayerService _playerService = PlayerService();

  @override
  void initState() {
    super.initState();
    _initializeApp();
  }

  Future<void> _initializeApp() async {
    try {
      // 1. Cargamos únicamente la temporada actual para un inicio instantáneo
      const currentSeason = '2026';
      
      final seasonResults = await Future.wait([
        _playerService.fetchPlayers(league: 'mls', season: currentSeason),
        _playerService.fetchPlayers(league: 'ligamx', season: currentSeason),
      ]);
      
      final List<Player> allFetchedPlayers = [...seasonResults[0], ...seasonResults[1]];
      
      // 2. Generamos la acumulación inicial para la opción "ALL" con esta temporada
      final Map<String, Player> careerMap = {};
      for (var p in allFetchedPlayers) {
        String key = p.id.isNotEmpty ? p.id : p.name.trim().toLowerCase();
        if (careerMap.containsKey(key)) {
          careerMap[key] = careerMap[key]!.accumulate(p);
        } else {
          careerMap[key] = p.copyWithSeason('ALL');
        }
      }
      
      final allCombined = [...allFetchedPlayers, ...careerMap.values];

      if (mounted) {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (_) => SelectionScreen(allPlayers: allCombined, locale: widget.locale),
          ),
        );
      }
    } catch (e) {
      if (mounted) {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (_) => SelectionScreen(allPlayers: [], errorMessage: e.toString(), locale: widget.locale),
          ),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations(widget.locale);
    return Scaffold(
      backgroundColor: const Color(0xFF0F172A),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/stathead_FC.jpg',
              width: 300,
              height: 300,
              fit: BoxFit.contain,
              errorBuilder: (_, __, ___) => const Text('⚽', style: TextStyle(fontSize: 40)),
            ),
            const SizedBox(height: 25),
            const Text(
              'STATHEAD FC',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w900, letterSpacing: 2.5, color: Colors.white),
            ),
            const SizedBox(height: 10),
            Text(t.get('loading'), style: const TextStyle(fontSize: 13, color: Colors.grey)),
            const SizedBox(height: 36),
            const SizedBox(
              width: 30,
              height: 30,
              child: CircularProgressIndicator(color: Color(0xFFF59E0B), strokeWidth: 3),
            ),
          ],
        ),
      ),
    );
  }
}

class SelectionScreen extends StatefulWidget {
  final List<Player> allPlayers;
  final String? errorMessage;
  final String locale;
  const SelectionScreen({super.key, required this.allPlayers, this.errorMessage, required this.locale});

  @override
  State<SelectionScreen> createState() => _SelectionScreenState();
}

class _SelectionScreenState extends State<SelectionScreen> {
  final PlayerService _playerService = PlayerService(); 
  bool _isLoadingSeason = false; 

  String _searchQuery = '';
  String _selectedSeason = '2026'; 
  String _selectedLeague = 'all';

  // Caché para evitar recalcular las ligas en cada renderizado
  List<String> _cachedLeagues = [];

  final List<String> _availableSeasons = List.generate(
    (2026 - 2015) + 1, 
    (index) => (2015 + index).toString(),
  ).reversed.toList();

  @override
  void initState() {
    super.initState();
    _updateAvailableLeagues();
  }

  // Método para actualizar las ligas disponibles de forma eficiente
  void _updateAvailableLeagues() {
    final leagues = widget.allPlayers
        .map((p) => p.league.trim())
        .where((l) => l.isNotEmpty)
        .toSet()
        .toList();
    leagues.sort();
    _cachedLeagues = leagues;

    // Si la liga seleccionada ya no existe en la nueva data, regresamos a 'all'
    if (_selectedLeague != 'all' && !_cachedLeagues.contains(_selectedLeague)) {
      _selectedLeague = 'all';
    }
  }

  Future<void> _onSeasonChanged(String? newSeason) async {
    if (newSeason == null || newSeason == _selectedSeason) return;

    if (newSeason == 'all') {
      setState(() {
        _selectedSeason = 'all';
        _updateAvailableLeagues();
      });
      return;
    }

    final hasDataForSeason = widget.allPlayers.any((p) => p.season.toString().replaceAll('_MX', '').trim() == newSeason);

    if (hasDataForSeason) {
      setState(() {
        _selectedSeason = newSeason;
        _updateAvailableLeagues();
      });
    } else {
      setState(() {
        _isLoadingSeason = true;
        _selectedSeason = newSeason;
      });

      try {
        final seasonResults = await Future.wait([
          _playerService.fetchPlayers(league: 'mls', season: newSeason),
          _playerService.fetchPlayers(league: 'ligamx', season: '${newSeason}_MX'),
        ]);

        final fetched = [...seasonResults[0], ...seasonResults[1]];
        if (fetched.isNotEmpty) {
          widget.allPlayers.addAll(fetched);
        }
      } catch (e) {
        debugPrint('Error cargando temporada $newSeason: $e');
      } finally {
        if (mounted) {
          setState(() {
            _isLoadingSeason = false;
            _updateAvailableLeagues(); // Actualizamos las ligas con los nuevos datos descargados
          });
        }
      }
    }
  }

  void _launchTopNMatchup(int topLimit) {
    final pool = widget.allPlayers.where((p) {
      final playerSeason = p.season.toString().replaceAll('_MX', '').trim();
      bool seasonMatch = (_selectedSeason == 'all') 
          ? (playerSeason == 'ALL') 
          : (playerSeason == _selectedSeason);
      
      bool leagueMatch = true;
      if (_selectedLeague != 'all') {
        leagueMatch = p.league.trim().toLowerCase() == _selectedLeague.toLowerCase();
      }
      
      bool hasPlayed = p.minutesPlayed > 0 || p.matches > 0;
      
      return seasonMatch && leagueMatch && hasPlayed;
    }).toList();

    if (pool.isEmpty) return;

    final sortedPool = List<Player>.from(pool)
      ..sort((a, b) => b.rating.compareTo(a.rating));

    final topList = sortedPool.take(topLimit).toList();
    if (topList.isEmpty) return;

    topList.shuffle();
    final p1 = topList.first;

    final samePositionPlayers = topList.where((p) => 
      p.position.toLowerCase() == p1.position.toLowerCase() && p.id != p1.id
    ).toList();

    Player p2;
    if (samePositionPlayers.isNotEmpty) {
      samePositionPlayers.shuffle();
      p2 = samePositionPlayers.first;
    } else {
      p2 = topList.firstWhere((p) => p.id != p1.id, orElse: () => p1);
    }

    Navigator.push(
      context,
      PageRouteBuilder(
        transitionDuration: const Duration(milliseconds: 800),
        reverseTransitionDuration: const Duration(milliseconds: 800),
        pageBuilder: (_, __, ___) => CompareScreen(
          allPlayers: widget.allPlayers,
          initialPlayer1: p1,
          initialPlayer2: p2,
          locale: widget.locale,
          season: _selectedSeason,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations(widget.locale);
    if (widget.errorMessage != null) {
      return Scaffold(
        body: Center(
          child: Text('${t.get('errorConnect')}${widget.errorMessage}', style: const TextStyle(color: Colors.redAccent)),
        ),
      );
    }

    final filteredPlayers = _searchQuery.trim().isEmpty
        ? <Player>[]
        : widget.allPlayers.where((p) {
            final playerSeason = p.season.toString().replaceAll('_MX', '').trim();
            if (_selectedSeason == 'all') {
              if (playerSeason != 'ALL') return false;
            } else {
              if (playerSeason != _selectedSeason) return false;
            }

            if (_selectedLeague != 'all') {
              if (p.league.trim().toLowerCase() != _selectedLeague.toLowerCase()) {
                return false;
              }
            }

            final q = _searchQuery.toLowerCase();
            final translatedPosition = t.translatePosition(p.position).toLowerCase();

       return p.name.toLowerCase().contains(q) ||
       p.team.toLowerCase().contains(q) ||
       p.position.toLowerCase().contains(q) ||
       translatedPosition.contains(q);
          }).toList();

    final String labelTop10 = widget.locale == 'es' ? t.get('verTop10RandomMatchup') : t.get('seeTop10RandomMatchup');
    final String labelTop20 = widget.locale == 'es' ? t.get('verTop20RandomMatchup') : t.get('seeTop20RandomMatchup');

    return Scaffold(
      backgroundColor: const Color(0xFF0F172A),
      appBar: AppBar(
        toolbarHeight: 70,
        title: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/stathead_FC.jpg',
                width: 52,
                height: 52,
                fit: BoxFit.contain,
                errorBuilder: (_, __, ___) => const SizedBox.shrink(),
              ),
              const SizedBox(width: 10),
              Text(t.get('searchTitle'), style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
            ],
          ),
        ),
        centerTitle: true,
      ),
      floatingActionButton: widget.allPlayers.isNotEmpty 
          ? Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  FloatingActionButton.extended(
                    heroTag: 'btn-top10-matchup',
                    backgroundColor: const Color(0xFF1E293B),
                    foregroundColor: const Color(0xFFF59E0B),
                    elevation: 3,
                    icon: const Icon(Icons.star_half_rounded, size: 20),
                    label: Text(labelTop10, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 12)),
                    onPressed: () => _launchTopNMatchup(10),
                  ),
                  const SizedBox(height: 12),
                  Container(
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [Color(0xFFEC4899), Color(0xFFF59E0B)],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      borderRadius: BorderRadius.circular(50),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0xFFEC4899).withOpacity(0.45),
                          blurRadius: 30,
                          offset: const Offset(0, 10),
                        ),
                      ],
                      border: Border.all(color: Colors.white.withOpacity(0.2), width: 1),
                    ),
                    child: FloatingActionButton.extended(
                      heroTag: 'btn-top20-matchup',
                      backgroundColor: Colors.transparent,
                      elevation: 0,
                      icon: const Icon(Icons.star_rounded, color: Colors.white),
                      label: Text(labelTop20, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 12, color: Colors.white)),
                      onPressed: () => _launchTopNMatchup(20),
                    ),
                  ),
                ],
              ),
            ) 
          : null,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 15.0, left: 20, right: 20),
            child: Row(
              children: [
                // Selector de Temporada
 // Selector de Temporada
Expanded(
  child: Container(
    height: 42,
    padding: const EdgeInsets.symmetric(horizontal: 10),
    decoration: BoxDecoration(
      color: const Color(0xFF1E293B).withOpacity(0.9),
      borderRadius: BorderRadius.circular(12),
      border: Border.all(color: const Color(0xFFEC4899), width: 1.5),
    ),
    child: DropdownButtonHideUnderline(
      child: DropdownButton(
        value: _availableSeasons.contains(_selectedSeason) ? _selectedSeason : _availableSeasons.first,
        dropdownColor: const Color(0xFF1E293B),
        icon: const Icon(Icons.keyboard_arrow_down_rounded, color: Color(0xFFEC4899)),
        style: const TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.bold),
        isExpanded: true,
        items: _availableSeasons.map((season) {
          return DropdownMenuItem(
            value: season,
            child: Text(season, overflow: TextOverflow.ellipsis),
          );
        }).toList(),
        onChanged: _isLoadingSeason ? null : _onSeasonChanged,
      ),
    ),
  ),
),         
                
                const SizedBox(width: 10),

                // Selector de Liga (Dinámico y Conectado con caché)
                Expanded(
                  child: Container(
                    height: 42,
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                      color: const Color(0xFF1E293B).withOpacity(0.9),
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: const Color(0xFF3B82F6), width: 1.5),
                    ),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                        value: _cachedLeagues.contains(_selectedLeague) ? _selectedLeague : 'all',
                        dropdownColor: const Color(0xFF1E293B),
                        icon: const Icon(Icons.keyboard_arrow_down_rounded, color: Color(0xFF3B82F6)),
                        style: const TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.bold),
                        isExpanded: true,
                        items: [
                          const DropdownMenuItem<String>(
                            value: 'all', 
                            child: Text('Todas las Ligas', overflow: TextOverflow.ellipsis),
                          ),
                          ..._cachedLeagues.map((league) {
                            return DropdownMenuItem<String>(
                              value: league,
                              child: Text(league, overflow: TextOverflow.ellipsis),
                            );
                          }),
                        ],
                        onChanged: (String? newValue) {
                          if (newValue != null) {
                            setState(() => _selectedLeague = newValue);
                          }
                        },
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          
          // Campo de búsqueda por texto
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              onChanged: (val) => setState(() => _searchQuery = val),
              decoration: InputDecoration(
                hintText: t.get('searchHint'),
                hintStyle: const TextStyle(color: Colors.white54),
                prefixIcon: const Icon(Icons.search, color: Color(0xFFEC4899)),
                filled: true,
                fillColor: const Color(0xFF1E293B).withOpacity(0.9),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),

          if (_isLoadingSeason)
            const Expanded(
              child: Center(
                child: CircularProgressIndicator(color: Color(0xFFF59E0B)),
              ),
            )
          else if (_searchQuery.trim().isEmpty)
            Expanded(
              child: SingleChildScrollView(
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 20.0, top: 20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Opacity(
                          opacity: 0.35,
                          child: Image.asset(
                            'assets/stathead_FC.jpg',
                            width: 240,
                            height: 240,
                            fit: BoxFit.contain,
                            errorBuilder: (_, __, ___) => const Icon(Icons.sports_soccer, size: 150, color: Colors.white),
                          ),
                        ),
                        const SizedBox(height: 16),
                        Text(
                          t.get('searchPrompt'),
                          style: const TextStyle(fontSize: 13, color: Colors.white70, fontWeight: FontWeight.w500),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )
          else
            Expanded(
              child: filteredPlayers.isEmpty
                  ? Center(child: Text(t.get('noPlayers'), style: const TextStyle(color: Colors.grey)))
                  : ListView.separated(
                      itemCount: filteredPlayers.length,
                      separatorBuilder: (_, __) => const Divider(height: 1, color: Colors.white10),
                      itemBuilder: (context, index) {
                        final player = filteredPlayers[index];
                        final badgeUrl = getTeamLogo(player);
                        final hasBadge = badgeUrl.trim().isNotEmpty;
                        final photoUrl = player.photoUrl;
                        final hasPhoto = photoUrl.trim().isNotEmpty;

                        return Material(
                          color: const Color(0xFF0F172A).withOpacity(0.9),
                          child: ListTile(
                            leading: Hero(
                              tag: 'player-hero-${player.id}-${player.season}',
                              child: Stack(
                                clipBehavior: Clip.none,
                                children: [
                                  CircleAvatar(
                                    backgroundColor: const Color(0xFF334155),
                                    backgroundImage: hasPhoto ? NetworkImage(photoUrl) : null,
                                    child: !hasPhoto ? Text(player.initials, style: const TextStyle(fontSize: 12, color: Colors.amber)) : null,
                                  ),
                                  if (hasBadge)
                                    Positioned(
                                      bottom: -2,
                                      right: -2,
                                      child: Container(
                                        width: 20,
                                        height: 20,
                                        decoration: const BoxDecoration(color: Color(0xFF0F172A), shape: BoxShape.circle),
                                        child: ClipOval(
                                          child: Image.network(
                                            badgeUrl,
                                            fit: BoxFit.contain,
                                            errorBuilder: (_, __, ___) => const SizedBox.shrink(),
                                          ),
                                        ),
                                      ),
                                    ),
                                ],
                              ),
                            ),
                            title: Text(player.name, style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
                            subtitle: Text('${player.team} (${player.league})\n${t.translatePosition(player.position)} • [${player.season}]', style: const TextStyle(color: Colors.white70, fontSize: 12)),
                            isThreeLine: true,
                            trailing: const Icon(Icons.arrow_forward_ios, size: 14, color: Colors.grey),
                            onTap: () {
                              Navigator.push(
                                context,
                                PageRouteBuilder(
                                  transitionDuration: const Duration(milliseconds: 800),
                                  reverseTransitionDuration: const Duration(milliseconds: 800),
                                  pageBuilder: (_, __, ___) => CompareScreen(
                                    allPlayers: widget.allPlayers,
                                    initialPlayer1: player,
                                    locale: widget.locale,
                                    season: _selectedSeason,
                                  ),
                                ),
                              );
                            },
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

class CompareScreen extends StatefulWidget {
  final List<Player> allPlayers;
  final Player initialPlayer1;
  final Player? initialPlayer2;
  final String locale;
  final String season;

  const CompareScreen({
    super.key, 
    required this.allPlayers, 
    required this.initialPlayer1, 
    this.initialPlayer2,
    required this.locale,
    required this.season,
  });

  @override
  State<CompareScreen> createState() => _CompareScreenState();
}

class _CompareScreenState extends State<CompareScreen> {
  late Player player1;
  Player? player2;
  final ScreenshotController _screenshotController = ScreenshotController();

  @override
  void initState() {
    super.initState();
    player1 = widget.initialPlayer1;
    player2 = widget.initialPlayer2;
  }

  void _openSearchForSlot(int slotNumber) async {
    final PlayerService playerService = PlayerService(); // Instancia de tu servicio

    final Player? selected = await showSearch<Player?>(
      context: context,
      delegate: PlayerSearchDelegate(
        allPlayers: widget.allPlayers, 
        season: widget.season,
        // 🔄 AQUÍ ESTÁ LA CLAVE: Conectamos la petición a la API por temporada
        fetchPlayersForSeason: (String targetSeason) async {
          try {
            final seasonResults = await Future.wait([
              playerService.fetchPlayers(league: 'mls', season: targetSeason),
              playerService.fetchPlayers(league: 'ligamx', season: targetSeason),
            ]);
            
            final fetched = [...seasonResults[0], ...seasonResults[1]];
            
            // Guardamos en caché local para que queden disponibles
            for (var p in fetched) {
              if (!widget.allPlayers.any((existing) => existing.id == p.id && existing.season.toString() == p.season.toString())) {
                widget.allPlayers.add(p);
              }
            }
            return fetched;
          } catch (e) {
            debugPrint('Error cargando temporada $targetSeason: $e');
            return [];
          }
        },
      ),
    );

    if (selected != null && mounted) {
      setState(() {
        if (slotNumber == 1) {
          player1 = selected;
        } else {
          player2 = selected;
        }
      });
    }
  }

  void _openRandomSamePositionForSlot(int slotNumber) {
    final pool = widget.allPlayers.where((p) {
      final playerSeason = p.season.toString().trim();
      if (widget.season == 'all') return playerSeason == 'ALL';
      return playerSeason == widget.season;
    }).toList();

    if (pool.isEmpty) return;
    
    final targetPlayer = slotNumber == 1 ? player1 : (player2 ?? player1);
    
    final samePositionPlayers = pool.where((p) => 
      p.position.toLowerCase() == targetPlayer.position.toLowerCase() && p.id != targetPlayer.id
    ).toList();

    Player opponent;
    if (samePositionPlayers.isNotEmpty) {
      samePositionPlayers.shuffle();
      opponent = samePositionPlayers.first;
    } else {
      final randomList = List<Player>.from(pool)..shuffle();
      opponent = randomList.firstWhere((p) => p.id != targetPlayer.id, orElse: () => targetPlayer);
    }

    setState(() {
      if (slotNumber == 1) {
        player1 = opponent;
      } else {
        player2 = opponent;
      }
    });
  }

  double _calculateNormalizedRating(num val, num p1Val, num? p2Val, {bool higherIsBetter = true}) {
    if (p2Val == null) {
      double v = val.toDouble();
      if (v <= 0) return 1.0;
      double res = (v / (v + 5)) * 9 + 1;
      return res > 10 ? 10 : (res < 1 ? 1 : res);
    }

    num v1 = p1Val;
    num v2 = p2Val;
    if (v1 == v2) {
      return 5.5;
    }

    if (higherIsBetter) {
      num maxVal = v1 > v2 ? v1 : v2;
      if (maxVal == 0) return 5.0;
      
      if (val == maxVal) {
        return 10.0;
      } else {
        double ratio = (val.toDouble() / maxVal.toDouble());
        double calculated = ratio * 9.0 + 1.0;
        return calculated < 1.0 ? 1.0 : (calculated > 10.0 ? 10.0 : calculated);
      }
    } else {
      num minVal = v1 < v2 ? v1 : v2;
      num maxVal = v1 > v2 ? v1 : v2;

      if (maxVal == minVal) return 5.5;
      if (val == minVal) {
        return 10.0;
      } else {
        double diff = (maxVal - minVal).toDouble();
        double playerDiff = (val - minVal).toDouble();
        double penaltyRatio = playerDiff / diff;
        double calculated = 10.0 - (penaltyRatio * 9.0);
        return calculated < 1.0 ? 1.0 : (calculated > 10.0 ? 10.0 : calculated);
      }
    }
  }

  void _showMatchupDialog() {
    final t = AppLocalizations(widget.locale);
    showDialog(
      context: context,
      builder: (context) {
        bool isSharing = false;
        return StatefulBuilder(
          builder: (context, setStateDialog) {
            return AlertDialog(
              backgroundColor: const Color(0xFF1E293B),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(t.get('matchupCardTitle'), style: const TextStyle(color: Colors.white, fontSize: 16)),
                  IconButton(
                    icon: isSharing 
                        ? const SizedBox(width: 18, height: 18, child: CircularProgressIndicator(strokeWidth: 2, color: Color(0xFFEC4899))) 
                        : const Icon(Icons.share, color: Color(0xFFEC4899)),
                    onPressed: isSharing ? null : () async {
                      setStateDialog(() => isSharing = true);
                      try {
                        final imageBytes = await _screenshotController.capture(pixelRatio: 2.0);
                        if (imageBytes != null) {
                          final xFile = XFile.fromData(
                            imageBytes,
                            mimeType: 'image/png',
                            name: 'stathead_fc_matchup_${player1.name}_vs_${player2!.name}.png',
                          );
                          await Share.shareXFiles(
                            [xFile],
                            text: '${t.get('shareText')} #${player1.name} vs #${player2!.name}',
                          );
                        }
                      } catch (e) {
                        debugPrint('Error: $e');
                      } finally {
                        if (mounted) {
                          setStateDialog(() => isSharing = false);
                        }
                      }
                    },
                  )
                ],
              ),
              content: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Screenshot(
                      controller: _screenshotController,
                      child: MatchupCardWidget(
                        player1: player1,
                        player2: player2!,
                        locale: widget.locale,
                        season: widget.season,
                      ),
                    ),
                  ],
                ),
              ),
              actions: [
                TextButton(
                  child: Text(t.get('cancel'), style: const TextStyle(color: Colors.grey)),
                  onPressed: () => Navigator.pop(context),
                ),
              ],
            );
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations(widget.locale);
    final double p1Rating = player1.rating;
    final double p2Rating = player2 != null ? player2!.rating : 0.0;
    final bool isComparing = player2 != null;

    final bool isP1RatingBetter = isComparing && p1Rating > p2Rating;
    final bool isP2RatingBetter = isComparing && p2Rating > p1Rating;

    final bool isGoalKeeperComparison = isComparing && 
        (player1.position.toLowerCase().contains('goalkeeper') || player1.position.toLowerCase().contains('portero')) &&
        (player2!.position.toLowerCase().contains('goalkeeper') || player2!.position.toLowerCase().contains('portero'));

    final String seasonLabel = widget.season == 'all' 
        ? t.get('careerWord') 
        : '${t.get('seasonWord')} ${widget.season}';

    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/stathead_FC.jpg',
              width: 60,
              height: 60,
              fit: BoxFit.contain,
              errorBuilder: (_, __, ___) => const Text('⚽', style: TextStyle(fontSize: 14)),
            ),
            const SizedBox(width: 8),
            Text('STATHEAD FC • $seasonLabel', style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 13)),
          ],
        ),
        centerTitle: true,
        actions: [
          if (isComparing)
            IconButton(
              icon: const Icon(Icons.share_rounded, color: Color(0xFFF59E0B)),
              tooltip: t.get('shareMatchup'),
              onPressed: _showMatchupDialog,
            ),
          IconButton(
            icon: const Icon(Icons.search, color: Color(0xFFEC4899), size: 24),
            tooltip: t.get('searchOrChange'),
            onPressed: () => _openSearchForSlot(player2 == null ? 2 : 1),
          ),
        ],
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          final isPortrait = constraints.maxWidth < 600;

          if (isPortrait) {
            return SingleChildScrollView(
              padding: const EdgeInsets.all(12),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: _buildPortraitPlayerCard(
                          player: player1,
                          title: '${t.get('mainPlayer')} [${player1.season}]',
                          borderColor: const Color(0xFFEC4899),
                          ratingColor: const Color(0xFFEC4899),
                          isBetterRating: isP1RatingBetter,
                          onClose: isComparing ? () => setState(() => player2 = null) : null,
                          onChange: () => _openSearchForSlot(1),
                          t: t,
                        ),
                      ),
                      const SizedBox(width: 8),
                      Expanded(
                        child: isComparing
                            ? _buildPortraitPlayerCard(
                                player: player2!,
                                title: '${t.get('comparison')} [${player2!.season}]',
                                borderColor: const Color(0xFFF59E0B),
                                ratingColor: const Color(0xFFF59E0B),
                                isBetterRating: isP2RatingBetter,
                                onClose: () => setState(() => player2 = null),
                                onChange: () => _openSearchForSlot(2),
                                t: t,
                              )
                            : Container(
                                height: 230,
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: const Color(0xFF1E293B).withOpacity(0.7),
                                  borderRadius: BorderRadius.circular(16),
                                  border: Border.all(color: const Color(0xFFF59E0B).withOpacity(0.5)),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Icon(Icons.person_add_rounded, size: 26, color: Color(0xFFF59E0B)),
                                    const SizedBox(height: 8),
                                    SizedBox(
                                      width: double.infinity,
                                      height: 30,
                                      child: ElevatedButton.icon(
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: const Color(0xFFF59E0B),
                                          foregroundColor: Colors.black,
                                          padding: EdgeInsets.zero,
                                        ),
                                        icon: const Icon(Icons.search, size: 14),
                                        label: Text(t.get('compareButton'), style: const TextStyle(fontSize: 10, fontWeight: FontWeight.bold)),
                                        onPressed: () => _openSearchForSlot(2),
                                      ),
                                    ),
                                    const SizedBox(height: 5),
                                    SizedBox(
                                      width: double.infinity,
                                      height: 30,
                                      child: OutlinedButton.icon(
                                        style: OutlinedButton.styleFrom(
                                          foregroundColor: const Color(0xFFF59E0B),
                                          side: const BorderSide(color: Color(0xFFF59E0B)),
                                          padding: EdgeInsets.zero,
                                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                                        ),
                                        icon: const Icon(Icons.casino_rounded, size: 14),
                                        label: Text(t.get('randomVs'), style: const TextStyle(fontSize: 9, fontWeight: FontWeight.bold)),
                                        onPressed: () => _openRandomSamePositionForSlot(2),
                                      ),
                                    ),
                                    const SizedBox(height: 5),
                                    SizedBox(
                                      width: double.infinity,
                                      height: 30,
                                      child: TextButton.icon(
                                        style: TextButton.styleFrom(
                                          foregroundColor: Colors.white70,
                                          padding: EdgeInsets.zero,
                                        ),
                                        icon: const Icon(Icons.calendar_month, size: 13, color: Color(0xFF38BDF8)),
                                        label: Text('Temporada: ${widget.season}', style: const TextStyle(fontSize: 9)),
                                        onPressed: () {},
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  if (isComparing) ...[
                    _buildBarChartCard(t, isGoalKeeperComparison),
                    const SizedBox(height: 16),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                      child: Center(
                        child: FloatingActionButton.extended(
                          onPressed: _showMatchupDialog,
                          backgroundColor: Colors.pinkAccent,
                          icon: const Icon(Icons.assessment, color: Colors.white),
                          label: const Text(
                            'Ver Tarjeta Matchup',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                  ],
                  _buildStatCategory(t.get('timeCat'), [
                    _buildStatRow(t.get('ratingTitle'), p1Rating, isComparing ? p2Rating : null, isComparing),
                    const Divider(height: 1, color: Colors.white10),
                    _buildStatRow(t.get('matches'), player1.matches, player2?.matches, isComparing),
                    const Divider(height: 1, color: Colors.white10),
                    _buildStatRow(t.get('lineups'), player1.lineups, player2?.lineups, isComparing),
                    const Divider(height: 1, color: Colors.white10),
                    _buildStatRow(t.get('minutes'), player1.minutesPlayed, player2?.minutesPlayed, isComparing),
                  ]),
                  _buildStatCategory(t.get('attackCat'), [
                    _buildStatRow(t.get('goals'), player1.goals, player2?.goals, isComparing),
                    const Divider(height: 1, color: Colors.white10),
                    _buildStatRow(t.get('assists'), player1.assists, player2?.assists, isComparing),
                    const Divider(height: 1, color: Colors.white10),
                    _buildStatRow(t.get('shotsOnTarget'), player1.shots, player2?.shots, isComparing),
                    const Divider(height: 1, color: Colors.white10),
                    _buildStatRow(t.get('shotsTotal'), player1.shotsTotal, player2?.shotsTotal, isComparing),
                    const Divider(height: 1, color: Colors.white10),
                    _buildStatRow(t.get('dribblesAttempt'), player1.dribblesAttempts, player2?.dribblesAttempts, isComparing),
                    const Divider(height: 1, color: Colors.white10),
                    _buildStatRow(t.get('dribblesSuccess'), player1.dribblesSuccess, player2?.dribblesSuccess, isComparing),
                  ]),
                  _buildStatCategory(t.get('duelsCat'), [
                    _buildStatRow(t.get('duelsTotal'), player1.duelsTotal, player2?.duelsTotal, isComparing),
                    const Divider(height: 1, color: Colors.white10),
                    _buildStatRow(t.get('duelsWon'), player1.duelsWon, player2?.duelsWon, isComparing),
                  ]),
                  _buildStatCategory(t.get('passesCat'), [
                    _buildStatRow(t.get('passesTotal'), player1.passesTotal, player2?.passesTotal, isComparing),
                    const Divider(height: 1, color: Colors.white10),
                    _buildStatRow(t.get('passesKey'), player1.passesKey, player2?.passesKey, isComparing),
                  const Divider(height: 1, color: Colors.white10),
                    _buildStatRow(t.get('passesAccuracy'), player1.passesAccuracy, player2?.passesAccuracy, isComparing),
                  ]),
                  _buildStatCategory(t.get('defenseCat'), [
                    _buildStatRow(t.get('tackles'), player1.tacklesTotal, player2?.tacklesTotal, isComparing),
                    const Divider(height: 1, color: Colors.white10),
                    _buildStatRow(t.get('interceptions'), player1.interceptions, player2?.interceptions, isComparing),
                    const Divider(height: 1, color: Colors.white10),
                    _buildStatRow(t.get('blocks'), player1.blocks, player2?.blocks, isComparing),
                  ]),
                  _buildStatCategory(t.get('disciplineCat'), [
                    _buildStatRow(t.get('foulsCommitted'), player1.foulsCommitted, player2?.foulsCommitted, isComparing, higherIsBetter: false),
                    const Divider(height: 1, color: Colors.white10),
                    _buildStatRow(t.get('foulsDrawn'), player1.foulsDrawn, player2?.foulsDrawn, isComparing),
                    const Divider(height: 1, color: Colors.white10),
                    _buildStatRow(t.get('yellowCards'), player1.yellowCards, player2?.yellowCards, isComparing, higherIsBetter: false),
                    const Divider(height: 1, color: Colors.white10),
                    _buildStatRow(t.get('redCards'), player1.redCards, player2?.redCards, isComparing, higherIsBetter: false),
                  ]),
                  _buildStatCategory(t.get('goalkeepersCat'), [
                    _buildStatRow(t.get('saves'), player1.saves, player2?.saves, isComparing),
                    const Divider(height: 1, color: Colors.white10),
                    _buildStatRow(t.get('penaltySaved'), player1.penaltySaved, player2?.penaltySaved, isComparing),
                    const Divider(height: 1, color: Colors.white10),
                    _buildStatRow(t.get('goalsConceded'), player1.goalsConceded, player2?.goalsConceded, isComparing, higherIsBetter: false),
                  ]),
                  const SizedBox(height: 40),
                ],
              ),
            );
          }

          return Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.only(top: 10, left: 16, bottom: 16, right: 8),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Container(
                          width: double.infinity,
                          padding: const EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            color: const Color(0xFF1E293B),
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: const Color(0xFFEC4899), width: 2),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('${t.get('mainPlayer')} [${player1.season}]', style: const TextStyle(fontSize: 10, fontWeight: FontWeight.bold, color: Color(0xFFEC4899))),
                                  if (isComparing)
                                    InkWell(
                                      onTap: () => setState(() => player2 = null),
                                      child: const Icon(Icons.close, size: 16, color: Colors.redAccent),
                                    ),
                                ],
                              ),
                              const SizedBox(height: 6),
                              Hero(
                                tag: 'player-hero-${player1.id}-${player1.season}',
                                child: Container(
                                  width: 90,
                                  height: 90,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    gradient: LinearGradient(
                                      colors: [const Color(0xFFEC4899).withOpacity(0.4), Colors.transparent],
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                    ),
                                    border: Border.all(color: const Color(0xFFEC4899), width: 3),
                                  ),
                                  clipBehavior: Clip.antiAlias,
                                  child: player1.photoUrl.isNotEmpty ? Image.network(
                                    player1.photoUrl,
                                    fit: BoxFit.cover,
                                    errorBuilder: (_, __, ___) => const Icon(Icons.person, size: 50, color: Colors.white54),
                                  ) : const Icon(Icons.person, size: 50, color: Colors.white54),
                                ),
                              ),
                              const SizedBox(height: 8),
                              Text(
                                player1.name,
                                textAlign: TextAlign.center,
                                style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                              if (player1.team.isNotEmpty)
                                Text(
                                  player1.team,
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(fontSize: 11, fontWeight: FontWeight.bold, color: Colors.white70),
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              const SizedBox(height: 2),
                              Builder(
                                builder: (context) {
                                  final flag = getCountryFlag(player1.country);
                                  final countryText = player1.country.isNotEmpty ? player1.country : 'N/A';
                                  final ageText = player1.age > 0 ? '${player1.age}a' : '';
                                  return Text(
                                    flag.isNotEmpty ? '$countryText $flag${ageText.isNotEmpty ? ' • $ageText' : ''}' : '$countryText${ageText.isNotEmpty ? ' • $ageText' : ''}',
                                    textAlign: TextAlign.center,
                                    style: const TextStyle(fontSize: 11, fontWeight: FontWeight.w600, color: Colors.white70),
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  );
                                },
                              ),
                              const SizedBox(height: 4),
                              if (player1.position.isNotEmpty)
                                Container(
                                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                                  decoration: BoxDecoration(
                                    color: const Color(0xFFEC4899).withOpacity(0.2),
                                    borderRadius: BorderRadius.circular(6),
                                    border: Border.all(color: const Color(0xFFEC4899).withOpacity(0.5)),
                                  ),
                                  child: Text(
                                    t.translatePosition(player1.position),
                                    textAlign: TextAlign.center,
                                    style: const TextStyle(fontSize: 10, fontWeight: FontWeight.bold, color: Color(0xFFEC4899)),
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              const SizedBox(height: 8),
                              Container(
                                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                                decoration: BoxDecoration(
                                  color: const Color(0xFF0F172A).withOpacity(0.6),
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(color: const Color(0xFFEC4899), width: 1.5),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.baseline,
                                  textBaseline: TextBaseline.alphabetic,
                                  children: [
                                    Text(t.get('valLabel'), style: const TextStyle(fontSize: 10, color: Colors.grey)),
                                    AnimatedCounter(
                                      p1Rating,
                                      format: 'decimal',
                                      style: TextStyle(
                                        fontSize: 14, 
                                        fontWeight: FontWeight.w900, 
                                        color: isP1RatingBetter ? Colors.greenAccent : const Color(0xFFEC4899),
                                      ),
                                    ),
                                    const Text('/10', style: TextStyle(fontSize: 9, color: Colors.grey)),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 10),
                              SizedBox(
                                width: double.infinity,
                                height: 32,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color(0xFFEC4899),
                                    foregroundColor: Colors.white,
                                    padding: EdgeInsets.zero,
                                  ),
                                  onPressed: () => _openSearchForSlot(1),
                                  child: Text(t.get('change'), style: const TextStyle(fontSize: 11)),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 12),
                        _buildPlayerIndividualStats(player1, t),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.only(top: 10, left: 4, bottom: 16, right: 8),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        if (!isComparing)
                          Container(
                            width: double.infinity,
                            padding: const EdgeInsets.all(16),
                            decoration: BoxDecoration(
                              color: const Color(0xFF1E293B).withOpacity(0.7),
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(color: const Color(0xFFF59E0B).withOpacity(0.5)),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(16),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: const Color(0xFFF59E0B).withOpacity(0.2),
                                  ),
                                  child: const Icon(Icons.person_add_rounded, size: 36, color: Color(0xFFF59E0B)),
                                ),
                                const SizedBox(height: 16),
                                SizedBox(
                                  width: double.infinity,
                                  height: 38,
                                  child: ElevatedButton.icon(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: const Color(0xFFF59E0B),
                                      foregroundColor: Colors.black,
                                    ),
                                    icon: const Icon(Icons.search, size: 16),
                                    label: Text(t.get('compareButton'), style: const TextStyle(fontSize: 11, fontWeight: FontWeight.bold)),
                                    onPressed: () => _openSearchForSlot(2),
                                  ),
                                ),
                                const SizedBox(height: 8),
                                SizedBox(
                                  width: double.infinity,
                                  height: 38,
                                  child: OutlinedButton.icon(
                                    style: OutlinedButton.styleFrom(
                                      foregroundColor: const Color(0xFFF59E0B),
                                      side: const BorderSide(color: Color(0xFFF59E0B)),
                                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                                    ),
                                    icon: const Icon(Icons.casino_rounded, size: 16),
                                    label: Text(t.get('randomVs'), style: const TextStyle(fontSize: 11, fontWeight: FontWeight.bold)),
                                    onPressed: () => _openRandomSamePositionForSlot(2),
                                  ),
                                ),
                              ],
                            ),
                          )
                        else
                          Container(
                            width: double.infinity,
                            padding: const EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              color: const Color(0xFF1E293B),
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(color: const Color(0xFFF59E0B), width: 2),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('${t.get('comparison')} [${player2!.season}]', style: const TextStyle(fontSize: 10, fontWeight: FontWeight.bold, color: Color(0xFFF59E0B))),
                                    InkWell(
                                      onTap: () => setState(() => player2 = null),
                                      child: const Icon(Icons.close, size: 16, color: Colors.redAccent),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 6),
                                Stack(
                                  alignment: Alignment.bottomRight,
                                  children: [
                                    Container(
                                      width: 90,
                                      height: 90,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        gradient: LinearGradient(
                                          colors: [const Color(0xFFF59E0B).withOpacity(0.4), Colors.transparent],
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter,
                                        ),
                                        border: Border.all(color: const Color(0xFFF59E0B), width: 3),
                                      ),
                                      clipBehavior: Clip.antiAlias,
                                      child: player2!.photoUrl.isNotEmpty ? Image.network(
                                        player2!.photoUrl,
                                        fit: BoxFit.cover,
                                        errorBuilder: (_, __, ___) => const Icon(Icons.person, size: 50, color: Colors.white54),
                                      ) : const Icon(Icons.person, size: 50, color: Colors.white54),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 8),
                                Text(
                                  player2!.name,
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                if (player2!.team.isNotEmpty)
                                  Text(
                                    player2!.team,
                                    textAlign: TextAlign.center,
                                    style: const TextStyle(fontSize: 11, fontWeight: FontWeight.bold, color: Colors.white70),
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                const SizedBox(height: 2),
                                Builder(
                                  builder: (context) {
                                    final flag = getCountryFlag(player2!.country);
                                    final countryText = player2!.country.isNotEmpty ? player2!.country : 'N/A';
                                    final ageText = player2!.age > 0 ? '${player2!.age}a' : '';
                                    return Text(
                                      flag.isNotEmpty ? '$countryText $flag${ageText.isNotEmpty ? ' • $ageText' : ''}' : '$countryText${ageText.isNotEmpty ? ' • $ageText' : ''}',
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(fontSize: 11, fontWeight: FontWeight.w600, color: Colors.white70),
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    );
                                  },
                                ),
                                const SizedBox(height: 4),
                                if (player2!.position.isNotEmpty)
                                  Container(
                                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                                    decoration: BoxDecoration(
                                      color: const Color(0xFFF59E0B).withOpacity(0.2),
                                      borderRadius: BorderRadius.circular(6),
                                      border: Border.all(color: const Color(0xFFF59E0B).withOpacity(0.5)),
                                    ),
                                    child: Text(
                                      t.translatePosition(player2!.position),
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(fontSize: 10, fontWeight: FontWeight.bold, color: Color(0xFFF59E0B)),
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                const SizedBox(height: 8),
                                Container(
                                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                                  decoration: BoxDecoration(
                                    color: const Color(0xFF0F172A).withOpacity(0.6),
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(color: const Color(0xFFF59E0B), width: 1.5),
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment: CrossAxisAlignment.baseline,
                                    textBaseline: TextBaseline.alphabetic,
                                    children: [
                                      Text(t.get('valLabel'), style: const TextStyle(fontSize: 10, color: Colors.grey)),
                                      AnimatedCounter(
                                        p2Rating,
                                        format: 'decimal',
                                        style: TextStyle(
                                          fontSize: 14, 
                                          fontWeight: FontWeight.w900, 
                                          color: isP2RatingBetter ? Colors.greenAccent : const Color(0xFFF59E0B),
                                        ),
                                      ),
                                      const Text('/10', style: TextStyle(fontSize: 9, color: Colors.grey)),
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 10),
                                SizedBox(
                                  width: double.infinity,
                                  height: 32,
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: const Color(0xFFF59E0B),
                                      foregroundColor: Colors.black,
                                      padding: EdgeInsets.zero,
                                    ),
                                    onPressed: () => _openSearchForSlot(2),
                                    child: Text(t.get('change'), style: const TextStyle(fontSize: 11)),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        if (isComparing) ...[
                          const SizedBox(height: 12),
                          _buildPlayerIndividualStats(player2!, t),
                        ],
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        if (isComparing) ...[
                          _buildBarChartCard(t, isGoalKeeperComparison),
                          const SizedBox(height: 12),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 16.0),
                            child: Center(
                              child: FloatingActionButton.extended(
                                onPressed: _showMatchupDialog,
                                backgroundColor: Colors.pinkAccent,
                                icon: const Icon(Icons.assessment, color: Colors.white),
                                label: const Text(
                                  'Ver Tarjeta Matchup',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 12),
                        ],
                        _buildStatCategory(t.get('timeCat'), [
                          _buildStatRow(t.get('ratingTitle'), p1Rating, isComparing ? p2Rating : null, isComparing),
                          const Divider(height: 1, color: Colors.white10),
                          _buildStatRow(t.get('matches'), player1.matches, player2?.matches, isComparing),
                          const Divider(height: 1, color: Colors.white10),
                          _buildStatRow(t.get('lineups'), player1.lineups, player2?.lineups, isComparing),
                          const Divider(height: 1, color: Colors.white10),
                          _buildStatRow(t.get('minutes'), player1.minutesPlayed, player2?.minutesPlayed, isComparing),
                        ]),
                        _buildStatCategory(t.get('attackCat'), [
                          _buildStatRow(t.get('goals'), player1.goals, player2?.goals, isComparing),
                          const Divider(height: 1, color: Colors.white10),
                          _buildStatRow(t.get('assists'), player1.assists, player2?.assists, isComparing),
                          const Divider(height: 1, color: Colors.white10),
                          _buildStatRow(t.get('shotsOnTarget'), player1.shots, player2?.shots, isComparing),
                          const Divider(height: 1, color: Colors.white10),
                          _buildStatRow(t.get('shotsTotal'), player1.shotsTotal, player2?.shotsTotal, isComparing),
                          const Divider(height: 1, color: Colors.white10),
                          _buildStatRow(t.get('dribblesAttempt'), player1.dribblesAttempts, player2?.dribblesAttempts, isComparing),
                          const Divider(height: 1, color: Colors.white10),
                          _buildStatRow(t.get('dribblesSuccess'), player1.dribblesSuccess, player2?.dribblesSuccess, isComparing),
                        ]),
                        _buildStatCategory(t.get('duelsCat'), [
                          _buildStatRow(t.get('duelsTotal'), player1.duelsTotal, player2?.duelsTotal, isComparing),
                          const Divider(height: 1, color: Colors.white10),
                          _buildStatRow(t.get('duelsWon'), player1.duelsWon, player2?.duelsWon, isComparing),
                        ]),
                        _buildStatCategory(t.get('passesCat'), [
                          _buildStatRow(t.get('passesTotal'), player1.passesTotal, player2?.passesTotal, isComparing),
                          const Divider(height: 1, color: Colors.white10),
                          _buildStatRow(t.get('passesKey'), player1.passesKey, player2?.passesKey, isComparing),
                        const Divider(height: 1, color: Colors.white10),
                    _buildStatRow(t.get('passesAccuracy'), player1.passesAccuracy, player2?.passesAccuracy, isComparing),
                  ]),
                        _buildStatCategory(t.get('defenseCat'), [
                          _buildStatRow(t.get('tackles'), player1.tacklesTotal, player2?.tacklesTotal, isComparing),
                          const Divider(height: 1, color: Colors.white10),
                          _buildStatRow(t.get('interceptions'), player1.interceptions, player2?.interceptions, isComparing),
                          const Divider(height: 1, color: Colors.white10),
                          _buildStatRow(t.get('blocks'), player1.blocks, player2?.blocks, isComparing),
                        ]),
                        _buildStatCategory(t.get('disciplineCat'), [
                          _buildStatRow(t.get('foulsCommitted'), player1.foulsCommitted, player2?.foulsCommitted, isComparing, higherIsBetter: false),
                          const Divider(height: 1, color: Colors.white10),
                          _buildStatRow(t.get('foulsDrawn'), player1.foulsDrawn, player2?.foulsDrawn, isComparing),
                          const Divider(height: 1, color: Colors.white10),
                          _buildStatRow(t.get('yellowCards'), player1.yellowCards, player2?.yellowCards, isComparing, higherIsBetter: false),
                          const Divider(height: 1, color: Colors.white10),
                          _buildStatRow(t.get('redCards'), player1.redCards, player2?.redCards, isComparing, higherIsBetter: false),
                        ]),
                        _buildStatCategory(t.get('goalkeepersCat'), [
                          _buildStatRow(t.get('saves'), player1.saves, player2?.saves, isComparing),
                          const Divider(height: 1, color: Colors.white10),
                        _buildStatRow(t.get('penaltySaved'), player1.penaltySaved, player2?.penaltySaved, isComparing),
                          const Divider(height: 1, color: Colors.white10),
                          _buildStatRow(t.get('goalsConceded'), player1.goalsConceded, player2?.goalsConceded, isComparing, higherIsBetter: false),
                        ]),
                        const SizedBox(height: 40),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }       

  Widget _buildPortraitPlayerCard({
    required Player player,
    required String title,
    required Color borderColor,
    required Color ratingColor,
    required bool isBetterRating,
    VoidCallback? onClose,
    required VoidCallback onChange,
    required AppLocalizations t,
  }) {
    final teamText = player.team.isNotEmpty ? player.team : '';
    final flag = getCountryFlag(player.country);
    final countryText = player.country.isNotEmpty ? player.country : 'N/A';
    final ageText = player.age > 0 ? '${player.age}a' : '';
    
    final locationAndAge = flag.isNotEmpty 
        ? '$countryText $flag${ageText.isNotEmpty ? ' • $ageText' : ''}' 
        : '$countryText${ageText.isNotEmpty ? ' • $ageText' : ''}';
    
    final subText = teamText.isNotEmpty ? '$teamText\n$locationAndAge' : locationAndAge;

    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: const Color(0xFF1E293B),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: borderColor, width: 2),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(title, style: TextStyle(fontSize: 9, fontWeight: FontWeight.bold, color: borderColor)),
              if (onClose != null)
                InkWell(
                  onTap: onClose,
                  child: const Icon(Icons.close, size: 14, color: Colors.redAccent),
                ),
            ],
          ),
          const SizedBox(height: 4),
          Container(
            width: 90,
            height: 90,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                colors: [borderColor.withOpacity(0.4), Colors.transparent],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
              border: Border.all(color: borderColor, width: 2),
            ),
            clipBehavior: Clip.antiAlias,
            child: player.photoUrl.isNotEmpty ? Image.network(
              player.photoUrl,
              fit: BoxFit.cover,
              errorBuilder: (_, __, ___) => const Icon(Icons.person, size: 35, color: Colors.white54),
            ) : const Icon(Icons.person, size: 35, color: Colors.white54),
          ),
          const SizedBox(height: 6),
          Text(
            player.name,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 13, fontWeight: FontWeight.bold, color: Colors.white),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(height: 2),
          Text(
            subText,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 9, fontWeight: FontWeight.w600, color: Colors.white70),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(height: 3),
          if (player.position.isNotEmpty)
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 1),
              decoration: BoxDecoration(
                color: borderColor.withOpacity(0.2),
                borderRadius: BorderRadius.circular(4),
                border: Border.all(color: borderColor.withOpacity(0.5)),
              ),
              child: Text(
                t.translatePosition(player.position),
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 8, fontWeight: FontWeight.bold, color: borderColor),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          const SizedBox(height: 6),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
            decoration: BoxDecoration(
              color: const Color(0xFF0F172A).withOpacity(0.6),
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: borderColor, width: 1.2),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              children: [
                Text(t.get('valLabel'), style: const TextStyle(fontSize: 9, color: Colors.grey)),
                AnimatedCounter(
                  player.rating,
                  format: 'decimal',
                  style: TextStyle(
                    fontSize: 12, 
                    fontWeight: FontWeight.w900, 
                    color: isBetterRating ? Colors.greenAccent : ratingColor,
                  ),
                ),
                const Text('/10', style: TextStyle(fontSize: 8, color: Colors.grey)),
              ],
            ),
          ),
          const SizedBox(height: 8),
          SizedBox(
            width: double.infinity,
            height: 28,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: borderColor,
                foregroundColor: borderColor == const Color(0xFFF59E0B) ? Colors.black : Colors.white,
                padding: EdgeInsets.zero,
              ),
              onPressed: onChange,
              child: Text(t.get('change'), style: const TextStyle(fontSize: 10)),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPlayerIndividualStats(Player player, AppLocalizations t) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: const Color(0xFF1E293B).withOpacity(0.7),
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: Colors.white10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('${t.get('attackCat')} [${player.season}]', style: const TextStyle(fontSize: 10, fontWeight: FontWeight.bold, color: Color(0xFFF59E0B))),
          const SizedBox(height: 4),
          _miniStatRow(t.get('goals'), player.goals.toString()),
          _miniStatRow(t.get('assists'), player.assists.toString()),
          _miniStatRow(t.get('shotsOnTarget'), player.shots.toString()),
          const Divider(height: 8, color: Colors.white10),
          Text(t.get('timeCat'), style: const TextStyle(fontSize: 10, fontWeight: FontWeight.bold, color: Color(0xFFF59E0B))),
          const SizedBox(height: 4),
          _miniStatRow(t.get('matches'), player.matches.toString()),
          _miniStatRow(t.get('minutes'), player.minutesPlayed.toString()),
          const Divider(height: 8, color: Colors.white10),
          Text(t.get('passesCat'), style: const TextStyle(fontSize: 10, fontWeight: FontWeight.bold, color: Color(0xFFF59E0B))),
          const SizedBox(height: 4),
          _miniStatRow(t.get('passesTotal'), player.passesTotal.toString()),
          _miniStatRow(t.get('passesKey'), player.passesKey.toString()),
          _miniStatRow(t.get('passesAccuracy'), player.passesAccuracy.toString()),
          const Divider(height: 8, color: Colors.white10),
          Text(t.get('defenseCat'), style: const TextStyle(fontSize: 10, fontWeight: FontWeight.bold, color: Color(0xFFF59E0B))),
          const SizedBox(height: 4),
          _miniStatRow(t.get('tackles'), player.tacklesTotal.toString()),
          _miniStatRow(t.get('interceptions'), player.interceptions.toString()),
        ],
      ),
    );
  }

  Widget _miniStatRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(child: Text(label, style: const TextStyle(fontSize: 11, color: Colors.white70), maxLines: 1, overflow: TextOverflow.ellipsis)),
          Text(value, style: const TextStyle(fontSize: 11, fontWeight: FontWeight.bold, color: Colors.white)),
        ],
      ),
    );
  }

  Widget _buildStatCategory(String title, List<Widget> children) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
        color: const Color(0xFF1E293B).withOpacity(0.5),
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: Colors.white10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
            child: Text(
              title,
              style: const TextStyle(fontSize: 11, fontWeight: FontWeight.bold, letterSpacing: 1.2, color: Color(0xFFF59E0B)),
            ),
          ),
          const Divider(height: 1, color: Colors.white10),
          ...children,
        ],
      ),
    );
  }

  Widget _buildStatRow(String label, num p1Val, num? p2Val, bool isComparing, {bool higherIsBetter = true}) {
    final double p1Norm = _calculateNormalizedRating(p1Val, p1Val, p2Val, higherIsBetter: higherIsBetter);
    final double p2Norm = p2Val != null ? _calculateNormalizedRating(p2Val, p1Val, p2Val, higherIsBetter: higherIsBetter) : 0.0;

    bool isP1Better = isComparing && p1Norm > p2Norm;
    bool isP2Better = isComparing && p2Norm > p1Norm;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
      child: Row(
        children: [
          if (isComparing)
            Expanded(
              flex: 2,
              child: Text(
                p1Val is double ? p1Val.toStringAsFixed(1) : p1Val.toString(),
                style: TextStyle(
                  fontWeight: isP1Better ? FontWeight.w900 : FontWeight.normal,
                  color: isP1Better ? Colors.greenAccent : Colors.white70,
                  fontSize: 13,
                ),
              ),
            ),
          Expanded(
            flex: 5,
            child: Text(
              label,
              textAlign: isComparing ? TextAlign.center : TextAlign.left,
              style: const TextStyle(color: Colors.white, fontSize: 12),
            ),
          ),
          if (isComparing)
            Expanded(
              flex: 2,
              child: Text(
                p2Val != null ? (p2Val is double ? p2Val.toStringAsFixed(1) : p2Val.toString()) : '-',
                textAlign: TextAlign.right,
                style: TextStyle(
                  fontWeight: isP2Better ? FontWeight.w900 : FontWeight.normal,
                  color: isP2Better ? Colors.greenAccent : Colors.white70,
                  fontSize: 13,
                ),
              ),
            )
          else
            Text(
              p1Val is double ? p1Val.toStringAsFixed(1) : p1Val.toString(),
              style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 13),
            ),
        ],
      ),
    );
  }

  Widget _buildBarChartCard(AppLocalizations t, bool isGK) {
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: const Color(0xFF1E293B),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.white10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(t.get('barChartTitle'), style: const TextStyle(fontSize: 11, fontWeight: FontWeight.bold, color: Colors.grey)),
              Row(
                children: [
                  Container(width: 8, height: 8, decoration: const BoxDecoration(color: Color(0xFFEC4899), shape: BoxShape.circle)),
                  const SizedBox(width: 4),
                  Text('${player1.name.split(' ').last} [${player1.season}]', style: const TextStyle(fontSize: 10, color: Colors.white70), maxLines: 1),
                  const SizedBox(width: 10),
                  Container(width: 8, height: 8, decoration: const BoxDecoration(color: Color(0xFFF59E0B), shape: BoxShape.circle)),
                  const SizedBox(width: 4),
                  Text(player2 != null ? '${player2!.name.split(' ').last} [${player2!.season}]' : '', style: const TextStyle(fontSize: 10, color: Colors.white70), maxLines: 1),
                ],
              ),
            ],
          ),
          const SizedBox(height: 16),
          SizedBox(
            height: 180,
            child: BarChart(
              BarChartData(
                alignment: BarChartAlignment.spaceAround,
                maxY: 10,
                titlesData: FlTitlesData(
                  show: true,
                  bottomTitles: AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: true,
                      reservedSize: 32,
                      getTitlesWidget: (val, meta) {
                        final labels = [
                          t.get('valuation'), 
                          t.get('timeCat'), 
                          t.get('attackCat'), 
                          t.get('passesCat'), 
                          t.get('defenseCat'), 
                          t.get('disciplineCat')
                        ];
                        int idx = val.toInt();
                        if (idx >= 0 && idx < labels.length) {
                          return Padding(
                            padding: const EdgeInsets.only(top: 4.0),
                            child: Transform.rotate(
                              angle: -0.3,
                              child: Text(
                                labels[idx], 
                                style: const TextStyle(fontSize: 9, color: Colors.white70, fontWeight: FontWeight.bold),
                              ),
                            ),
                          );
                        }
                        return const Text('');
                      },
                    ),
                  ),
                  leftTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
                  topTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
                  rightTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
                ),
                gridData: const FlGridData(show: false),
                borderData: FlBorderData(show: false),
                barGroups: [
                  _makeBarGroup(0, player1.rating, player2?.rating ?? 0),
                  _makeBarGroup(1, _calculateNormalizedRating(player1.matches, player1.matches, player2?.matches), _calculateNormalizedRating(player2?.matches ?? 0, player1.matches, player2?.matches)),
                  _makeBarGroup(2, _calculateNormalizedRating(player1.goals, player1.goals, player2?.goals), _calculateNormalizedRating(player2?.goals ?? 0, player1.goals, player2?.goals)),
                  _makeBarGroup(3, _calculateNormalizedRating(player1.passesAccuracy, player1.passesAccuracy, player2?.passesAccuracy), _calculateNormalizedRating(player2?.passesAccuracy ?? 0, player1.passesAccuracy, player2?.passesAccuracy)),
                  _makeBarGroup(4, _calculateNormalizedRating(player1.tacklesTotal, player1.tacklesTotal, player2?.tacklesTotal), _calculateNormalizedRating(player2?.tacklesTotal ?? 0, player1.tacklesTotal, player2?.tacklesTotal)),
                  _makeBarGroup(5, _calculateNormalizedRating(player1.yellowCards, player1.yellowCards, player2?.yellowCards, higherIsBetter: false), _calculateNormalizedRating(player2?.yellowCards ?? 0, player1.yellowCards, player2?.yellowCards, higherIsBetter: false)),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  BarChartGroupData _makeBarGroup(int x, double y1, double y2) {
    return BarChartGroupData(
      x: x,
      barRods: [
        BarChartRodData(toY: y1 > 10 ? 10 : (y1 < 1 ? 1 : y1), color: const Color(0xFFEC4899), width: 7, borderRadius: BorderRadius.circular(4)),
        BarChartRodData(toY: y2 > 10 ? 10 : (y2 < 1 ? 1 : y2), color: const Color(0xFFF59E0B), width: 7, borderRadius: BorderRadius.circular(4)),
      ],
    );
  }
}

class MatchupCardWidget extends StatelessWidget {
  final Player player1;
  final Player player2;
  final String locale;
  final String season;

  const MatchupCardWidget({
    super.key, 
    required this.player1, 
    required this.player2, 
    required this.locale,
    required this.season,
  });

  String _getTranslatedPosition(String rawPosition) {
    final pos = rawPosition.toLowerCase().trim();
    final isEs = locale.toLowerCase().contains('es');
    
    if (pos.contains('goalkeeper') || pos.contains('portero') || pos == 'por' || pos == 'gk') {
      return isEs ? 'Portero' : 'Goalkeeper';
    } else if (pos.contains('defender') || pos.contains('defensa') || pos == 'def') {
      return isEs ? 'Defensa' : 'Defender';
    } else if (pos.contains('midfielder') || pos.contains('centrocampista') || pos.contains('mediocampista') || pos == 'mid' || pos == 'cen') {
      return isEs ? 'Mediocampista' : 'Midfielder';
    } else if (pos.contains('forward') || pos.contains('attacker') || pos.contains('delantero') || pos == 'att' || pos == 'del') {
      return isEs ? 'Delantero' : 'Forward';
    }
    return rawPosition;
  }

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations(locale);
    final isEs = locale.toLowerCase().contains('es');

    bool isP1GK = player1.position.toLowerCase().contains('goalkeeper') || player1.position.toLowerCase().contains('portero') || player1.position.toUpperCase() == 'POR' || player1.position.toUpperCase() == 'GK';
    bool isP2GK = player2.position.toLowerCase().contains('goalkeeper') || player2.position.toLowerCase().contains('portero') || player2.position.toUpperCase() == 'POR' || player2.position.toUpperCase() == 'GK';

    bool isP1Def = player1.position.toLowerCase().contains('defender') || player1.position.toLowerCase().contains('defensa') || player1.position.toUpperCase() == 'DEF';
    bool isP2Def = player2.position.toLowerCase().contains('defender') || player2.position.toLowerCase().contains('defensa') || player2.position.toUpperCase() == 'DEF';

    bool isP1Fwd = player1.position.toLowerCase().contains('forward') || player1.position.toLowerCase().contains('attacker') || player1.position.toLowerCase().contains('delantero') || player1.position.toUpperCase() == 'ATT' || player1.position.toUpperCase() == 'DEL';
    bool isP2Fwd = player2.position.toLowerCase().contains('forward') || player2.position.toLowerCase().contains('attacker') || player2.position.toLowerCase().contains('delantero') || player2.position.toUpperCase() == 'ATT' || player2.position.toUpperCase() == 'DEL';

    final p1SeasonClean = player1.season.replaceAll('_MX', '');
    final p2SeasonClean = player2.season.replaceAll('_MX', '');

    double p1GoalsPerMatch = player1.matches > 0 ? player1.goalsConceded / player1.matches : 0.0;
    double p2GoalsPerMatch = player2.matches > 0 ? player2.goalsConceded / player2.matches : 0.0;
    final goalsPerMatchLabel = isEs ? 'Goles concedidos / partido' : 'Goals conceded / match';

    double p1ShotAccuracy = player1.shotsTotal > 0 ? (player1.shots / player1.shotsTotal) * 100 : 0.0;
    double p2ShotAccuracy = player2.shotsTotal > 0 ? (player2.shots / player2.shotsTotal) * 100 : 0.0;
    final shotAccuracyLabel = isEs ? 'Precisión de tiros' : 'Shot accuracy';

    double p1GoalContrib = player1.matches > 0 ? (player1.goals + player1.assists) / player1.matches : 0.0;
    double p2GoalContrib = player2.matches > 0 ? (player2.goals + player2.assists) / player2.matches : 0.0;
    final goalContribLabel = isEs ? 'Contrib. de gol / partido' : 'Goal contributions / match';

    final successfulDribblesLabel = isEs ? 'Regates Exitosos' : 'Successful Dribbles';
    final shotsOnTargetLabel = isEs ? 'Disparos a Puerta' : 'Shots on Target';

    return Container(
      width: 320,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [Color(0xFF0F172A), Color(0xFF1E293B)],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: const Color(0xFFEC4899), width: 1.5),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/stathead_FC.jpg',
                width: 60,
                height: 60,
                fit: BoxFit.contain,
                errorBuilder: (_, __, ___) => const SizedBox.shrink(),
              ),
              const SizedBox(width: 8),
              const Text('STATHEAD FC', style: TextStyle(fontSize: 11, fontWeight: FontWeight.w900, letterSpacing: 1.5, color: Colors.white), textAlign: TextAlign.center),
            ],
          ),
          const SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // JUGADOR 1
              Expanded(
                child: Column(
                  children: [
                    Stack(
                      children: [
                        CircleAvatar(
                          radius: 28,
                          backgroundImage: player1.photoUrl.isNotEmpty ? NetworkImage(player1.photoUrl) : null,
                          child: player1.photoUrl.isEmpty ? const Icon(Icons.person) : null,
                        ),
                        if (player1.teamBadgeUrl.isNotEmpty)
                          Positioned(
                            bottom: 0,
                            right: 0,
                            child: Container(
                              padding: const EdgeInsets.all(2),
                              decoration: BoxDecoration(
                                color: const Color(0xFF1E293B),
                                shape: BoxShape.circle,
                                border: Border.all(color: const Color(0xFFEC4899), width: 1.5),
                              ),
                              child: Image.network(
                                player1.teamBadgeUrl,
                                width: 16,
                                height: 16,
                                errorBuilder: (_, __, ___) => const SizedBox.shrink(),
                              ),
                            ),
                          ),
                      ],
                    ),
                    const SizedBox(height: 6),
                    Text(player1.name, textAlign: TextAlign.center, style: const TextStyle(fontSize: 11, fontWeight: FontWeight.bold, color: Colors.white), maxLines: 1, overflow: TextOverflow.ellipsis),
                    Builder(
                      builder: (context) {
                        final flag = getCountryFlag(player1.country);
                        final countryText = player1.country.isNotEmpty ? player1.country : 'N/A';
                        return Text(
                          flag.isNotEmpty ? '$countryText $flag' : countryText,
                          textAlign: TextAlign.center,
                          style: const TextStyle(fontSize: 9, color: Colors.white70),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        );
                      },
                    ),
                    const SizedBox(height: 2),
                    Text(
                      '${player1.team} [$p1SeasonClean]', 
                      textAlign: TextAlign.center, 
                      style: const TextStyle(fontSize: 9, color: Colors.white70), 
                      maxLines: 1, 
                      overflow: TextOverflow.ellipsis,
                    ),
                    if (player1.position.isNotEmpty)
                      Container(
                        margin: const EdgeInsets.only(top: 2),
                        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 1),
                        decoration: BoxDecoration(
                          color: const Color(0xFFEC4899).withOpacity(0.2),
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: Text(_getTranslatedPosition(player1.position), style: const TextStyle(fontSize: 8, fontWeight: FontWeight.bold, color: Color(0xFFEC4899))),
                      ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 4, vertical: 20),
                child: Text('VS', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w900, color: Color(0xFFEC4899))),
              ),
              // JUGADOR 2
              Expanded(
                child: Column(
                  children: [
                    Stack(
                      children: [
                        CircleAvatar(
                          radius: 28,
                          backgroundImage: player2.photoUrl.isNotEmpty ? NetworkImage(player2.photoUrl) : null,
                          child: player2.photoUrl.isEmpty ? const Icon(Icons.person) : null,
                        ),
                        if (player2.teamBadgeUrl.isNotEmpty)
                          Positioned(
                            bottom: 0,
                            right: 0,
                            child: Container(
                              padding: const EdgeInsets.all(2),
                              decoration: BoxDecoration(
                                color: const Color(0xFF1E293B),
                                shape: BoxShape.circle,
                                border: Border.all(color: const Color(0xFFF59E0B), width: 1.5),
                              ),
                              child: Image.network(
                                player2.teamBadgeUrl,
                                width: 16,
                                height: 16,
                                errorBuilder: (_, __, ___) => const SizedBox.shrink(),
                              ),
                            ),
                          ),
                      ],
                    ),
                    const SizedBox(height: 6),
                    Text(player2.name, textAlign: TextAlign.center, style: const TextStyle(fontSize: 11, fontWeight: FontWeight.bold, color: Colors.white), maxLines: 1, overflow: TextOverflow.ellipsis),
                    Builder(
                      builder: (context) {
                        final flag = getCountryFlag(player2.country);
                        final countryText = player2.country.isNotEmpty ? player2.country : 'N/A';
                        return Text(
                          flag.isNotEmpty ? '$countryText $flag' : countryText,
                          textAlign: TextAlign.center,
                          style: const TextStyle(fontSize: 9, color: Colors.white70),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        );
                      },
                    ),
                    const SizedBox(height: 2),
                    Text(
                      '${player2.team} [$p2SeasonClean]', 
                      textAlign: TextAlign.center, 
                      style: const TextStyle(fontSize: 9, color: Colors.white70), 
                      maxLines: 1, 
                      overflow: TextOverflow.ellipsis,
                    ),
                    if (player2.position.isNotEmpty)
                      Container(
                        margin: const EdgeInsets.only(top: 2),
                        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 1),
                        decoration: BoxDecoration(
                          color: const Color(0xFFF59E0B).withOpacity(0.2),
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: Text(_getTranslatedPosition(player2.position), style: const TextStyle(fontSize: 8, fontWeight: FontWeight.bold, color: Color(0xFFF59E0B))),
                      ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          const Divider(color: Colors.white24, height: 1),
          const SizedBox(height: 8),
          
          _buildMatchupStatRow(t.get('valuation'), player1.rating, player2.rating, isRating: true),
          
if (isP1GK && isP2GK) ...[
            // BLOQUE EXCLUSIVO PARA DUELOS DE PORTEROS (Ambos son porteros)
            _buildMatchupStatRow(t.get('matches'), player1.matches, player2.matches),
            _buildMatchupStatRow(t.get('minutes'), player1.minutesPlayed, player2.minutesPlayed),
            _buildMatchupStatRow(t.get('saves'), player1.saves, player2.saves, hideIfZero: true),
            _buildMatchupStatRow(t.get('penaltySaved'), player1.penaltySaved, player2.penaltySaved),
            _buildMatchupStatRow(t.get('goalsConceded'), player1.goalsConceded, player2.goalsConceded, lowerIsBetter: true),
            _buildMatchupStatRow(goalsPerMatchLabel, p1GoalsPerMatch, p2GoalsPerMatch, isDecimal: true, lowerIsBetter: true),
            _buildMatchupStatRow(t.get('totalCards'), player1.yellowCards + player1.redCards, player2.yellowCards + player2.redCards, lowerIsBetter: true),
          ] else if (isP1GK || isP2GK) ...[
            // BLOQUE PARA CRUCES MIXTOS (Un portero vs un jugador de campo)
            // Mostramos solo métricas generales y comunes para evitar datos absurdos
            _buildMatchupStatRow(t.get('matches'), player1.matches, player2.matches),
            _buildMatchupStatRow(t.get('minutes'), player1.minutesPlayed, player2.minutesPlayed),
            // Si el jugador 1 es portero muestra sus goles concedidos, si no, muestra sus goles normales (o se oculta si prefieres)
            _buildMatchupStatRow(t.get('totalCards'), player1.yellowCards + player1.redCards, player2.yellowCards + player2.redCards, lowerIsBetter: true),
          ] else if (isP1Def || isP2Def) ...[
            // BLOQUE PARA DEFENSAS
            _buildMatchupStatRow(t.get('matches'), player1.matches, player2.matches),
            _buildMatchupStatRow(t.get('goals'), player1.goals, player2.goals, hideIfZero: true),
            _buildMatchupStatRow(goalContribLabel, p1GoalContrib, p2GoalContrib, isDecimal: true, hideIfZero: true), // <-- Oculta si asistencias o goles dan 0 / se ocultan
            _buildMatchupStatRow(t.get('tackles'), player1.tacklesTotal, player2.tacklesTotal, hideIfZero: true),
            _buildMatchupStatRow(t.get('interceptions'), player1.interceptions, player2.interceptions, hideIfZero: true),
            _buildMatchupStatRow(t.get('blocks'), player1.blocks, player2.blocks, hideIfZero: true),
            _buildMatchupStatRow(t.get('duelsWon'), player1.duelsWon, player2.duelsWon, hideIfZero: true),
            _buildMatchupStatRow(t.get('passesAccuracy'), player1.passesAccuracy, player2.passesAccuracy, isDecimal: true, hideIfZero: true),
            _buildMatchupStatRow(t.get('totalCards'), player1.yellowCards + player1.redCards, player2.yellowCards + player2.redCards, lowerIsBetter: true),
          ] else if (isP1Fwd || isP2Fwd) ...[
            // BLOQUE PARA DELANTEROS
            _buildMatchupStatRow(t.get('matches'), player1.matches, player2.matches),
            _buildMatchupStatRow(t.get('goals'), player1.goals, player2.goals),
            _buildMatchupStatRow(t.get('assists'), player1.assists, player2.assists, hideIfZero: true), 
            _buildMatchupStatRow(goalContribLabel, p1GoalContrib, p2GoalContrib, isDecimal: true, hideIfZero: true), // <-- Oculta si hay ceros
            _buildMatchupStatRow(shotsOnTargetLabel, player1.shots, player2.shots, hideIfZero: true),
            _buildMatchupStatRow(shotAccuracyLabel, p1ShotAccuracy, p2ShotAccuracy, isDecimal: true, hideIfZero: true),
            _buildMatchupStatRow(t.get('keyPasses'), player1.passesKey, player2.passesKey, hideIfZero: true),
            _buildMatchupStatRow(successfulDribblesLabel, player1.dribblesSuccess, player2.dribblesSuccess, hideIfZero: true),
            _buildMatchupStatRow(t.get('totalCards'), player1.yellowCards + player1.redCards, player2.yellowCards + player2.redCards, lowerIsBetter: true),
          ] else ...[
            // BLOQUE PARA MEDIOCAMPISTAS
            _buildMatchupStatRow(t.get('matches'), player1.matches, player2.matches),
            _buildMatchupStatRow(t.get('goals'), player1.goals, player2.goals),
            _buildMatchupStatRow(t.get('assists'), player1.assists, player2.assists, hideIfZero: true), 
            _buildMatchupStatRow(goalContribLabel, p1GoalContrib, p2GoalContrib, isDecimal: true, hideIfZero: true), // <-- Oculta automáticamente si hay 0 en asistencias/goles o contribución
            _buildMatchupStatRow(shotAccuracyLabel, p1ShotAccuracy, p2ShotAccuracy, isDecimal: true, hideIfZero: true),
            _buildMatchupStatRow(t.get('passesAccuracy'), player1.passesAccuracy, player2.passesAccuracy, isDecimal: true, hideIfZero: true),
            _buildMatchupStatRow(t.get('keyPasses'), player1.passesKey, player2.passesKey, hideIfZero: true),
            _buildMatchupStatRow(successfulDribblesLabel, player1.dribblesSuccess, player2.dribblesSuccess, hideIfZero: true),
            _buildMatchupStatRow(t.get('duelsWon'), player1.duelsWon, player2.duelsWon, hideIfZero: true),
            _buildMatchupStatRow(t.get('tackles'), player1.tacklesTotal, player2.tacklesTotal, hideIfZero: true),
            _buildMatchupStatRow(t.get('totalCards'), player1.yellowCards + player1.redCards, player2.yellowCards + player2.redCards, lowerIsBetter: true),
          ],

          const SizedBox(height: 8),
          const Divider(color: Colors.white24, height: 1),
          const SizedBox(height: 6),
          Text(t.get('shareText'), textAlign: TextAlign.center, style: const TextStyle(fontSize: 9, color: Colors.white54)),
        ],
      ),
    );
  }

  Widget _buildMatchupStatRow(
    String label, 
    num val1, 
    num val2, {
    bool isRating = false, 
    bool isDecimal = false, 
    bool lowerIsBetter = false,
    bool hideIfZero = false,
  }) {
    // Si hideIfZero es true y ALGUNO de los dos tiene 0, se oculta la fila
    if (hideIfZero && (val1 == 0 || val2 == 0)) {
      return const SizedBox.shrink();
    }

    bool isP1Winner;
    bool isP2Winner;

    if (val1 == val2) {
      isP1Winner = false;
      isP2Winner = false;
    } else if (lowerIsBetter) {
      isP1Winner = val1 < val2;
      isP2Winner = val2 < val1;
    } else {
      isP1Winner = val1 > val2;
      isP2Winner = val2 > val1;
    }

    String displayVal1 = isDecimal ? val1.toStringAsFixed(2) : (isRating ? val1.toStringAsFixed(1) : val1.toString());
    String displayVal2 = isDecimal ? val2.toStringAsFixed(2) : (isRating ? val2.toStringAsFixed(1) : val2.toString());

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 3.0, horizontal: 4.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 50,
            child: Text(
              displayVal1, 
              textAlign: TextAlign.left,
              style: TextStyle(
                fontWeight: isP1Winner ? FontWeight.bold : FontWeight.normal, 
                fontSize: (isRating || isDecimal) ? 11 : 10, 
                color: isP1Winner ? const Color(0xFFEC4899) : Colors.white,
              ),
            ),
          ),
          Expanded(
            child: Text(
              label, 
              textAlign: TextAlign.center, 
              style: const TextStyle(color: Colors.white70, fontSize: 10),
            ),
          ),
          SizedBox(
            width: 50,
            child: Text(
              displayVal2, 
              textAlign: TextAlign.right,
              style: TextStyle(
                fontWeight: isP2Winner ? FontWeight.bold : FontWeight.normal, 
                fontSize: (isRating || isDecimal) ? 11 : 10, 
                color: isP2Winner ? const Color(0xFFF59E0B) : Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class PlayerSearchDelegate extends SearchDelegate<Player?> {
  final List allPlayers;
  final String season;
  final dynamic fetchPlayersForSeason;

  late String _currentSeason;
  late String _currentLeague;
  late List _currentPlayers;
  bool _isLoadingSeason = false;

  PlayerSearchDelegate({
    required this.allPlayers,
    required this.season,
    this.fetchPlayersForSeason,
  }) {
    _currentSeason = season;
    _currentLeague = 'ALL';
    _currentPlayers = List.from(allPlayers);
  }

  bool _isLigaMxTeam(String teamName) {
    const ligaMxTeams = [
      'América', 'America', 'Chivas', 'Guadalajara', 'Cruz Azul', 'Pumas', 
      'Tigres', 'Rayados', 'Monterrey', 'Toluca', 'Pachuca', 'León', 'Leon', 
      'Santos', 'Atlas', 'Necaxa', 'Puebla', 'Tijuana', 'Juárez', 'Juarez', 
      'Mazatlán', 'Mazatlan', 'San Luis', 'Querétaro', 'Queretaro'
    ];
    return ligaMxTeams.any((t) => teamName.toLowerCase().contains(t.toLowerCase()));
  }

  @override
  List< Widget > ? buildActions(BuildContext context) {
    return [
      if (query.isNotEmpty)
        IconButton(icon: const Icon(Icons.clear), onPressed: () => query = ''),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: () => close(context, null),
    );
  }

  @override
  Widget buildResults(BuildContext context) => _buildView();

  @override
  Widget buildSuggestions(BuildContext context) => _buildView();

  Widget _buildView() {
    return StatefulBuilder(
      builder: (context, setStateBuilder) {
        final List availableSeasons = [
          'ALL',
          '2026',
          '2025',
          '2024',
          '2023',
          '2022',
          '2021',
          '2020',
          '2019',
          '2018',
          '2017',
          '2016',
          '2015'
        ];

        return Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              color: const Color(0xFF1E293B),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const Text(
                        "Liga:",
                        style: TextStyle(color: Colors.white70, fontSize: 13, fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(width: 6),
                      DropdownButton(
                        value: _currentLeague,
                        dropdownColor: const Color(0xFF1E293B),
                        style: const TextStyle(color: Colors.white, fontSize: 13),
                        underline: const SizedBox.shrink(),
                        items: const [
                          DropdownMenuItem(value: 'ALL', child: Text('TODAS')),
                          DropdownMenuItem(value: 'MLS', child: Text('MLS')),
                          DropdownMenuItem(value: 'LIGA_MX', child: Text('LIGA MX')),
                        ],
                        onChanged: (String? newValue) {
                          if (newValue != null) {
                            setStateBuilder(() {
                              _currentLeague = newValue;
                            });
                          }
                        },
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Text(
                        "Temporada:",
                        style: TextStyle(color: Colors.white70, fontSize: 13, fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(width: 6),
                      DropdownButton(
                        value: _currentSeason,
                        dropdownColor: const Color(0xFF1E293B),
                        style: const TextStyle(color: Colors.white, fontSize: 13),
                        underline: const SizedBox.shrink(),
                        items: [
                          for (var value in availableSeasons)
                            DropdownMenuItem(
                              value: value,
                              child: Text(value.toUpperCase()),
                            ),
                        ],
                        onChanged: (newValue) {
                          if (newValue != null && newValue != _currentSeason) {
                            setStateBuilder(() {
                              _currentSeason = newValue.toString();
                              _isLoadingSeason = true;
                            });

                            () async {
                              if (fetchPlayersForSeason != null) {
                                try {
                                  final loadedData = await fetchPlayersForSeason(newValue.toString());
                                  setStateBuilder(() {
                                    _currentPlayers = loadedData;
                                  });
                                } catch (e) {
                                  print("Error al hacer lazy loading en búsqueda: $e");
                                  setStateBuilder(() {
                                    _currentPlayers = [];
                                  });
                                }
                              }

                              setStateBuilder(() {
                                _isLoadingSeason = false;
                              });
                            }();
                          }
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: _isLoadingSeason
                  ? const Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircularProgressIndicator(color: Colors.amber),
                          SizedBox(height: 12),
                          Text(
                            "Cargando jugadores...",
                            style: TextStyle(color: Colors.white70, fontSize: 13),
                          ),
                        ],
                      ),
                    )
                  : _buildPlayerList(_currentPlayers),
            ),
          ],
        );
      },
    );
  }

  Widget _buildPlayerList(List players) {
    final results = players.where((p) {
      final playerSeason = p.season.toString().trim();
      if (_currentSeason.toLowerCase() != 'all') {
        if (!playerSeason.contains(_currentSeason.trim())) return false;
      }

      if (_currentLeague != 'ALL') {
        bool isLigaMx = _isLigaMxTeam(p.team);
        if (_currentLeague == 'LIGA_MX' && !isLigaMx) return false;
        if (_currentLeague == 'MLS' && isLigaMx) return false;
      }

      if (query.trim().isEmpty) return true;
      final q = query.toLowerCase();
      return p.name.toLowerCase().contains(q) ||
          p.team.toLowerCase().contains(q) ||
          p.position.toLowerCase().contains(q);
    }).toList();

    if (results.isEmpty) {
      return Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Text(
            'No hay jugadores para esta selección (${_currentSeason}).',
            textAlign: TextAlign.center,
            style: const TextStyle(color: Colors.white70, fontSize: 14),
          ),
        ),
      );
    }

    return ListView.separated(
      itemCount: results.length,
      separatorBuilder: (_, __) => const Divider(height: 1, color: Colors.white10),
      itemBuilder: (context, index) {
        final player = results[index];
        final badgeUrl = getTeamLogo(player);
        final photoUrl = player.photoUrl;
        final hasPhoto = photoUrl.trim().isNotEmpty;

        return Material(
          color: const Color(0xFF0F172A),
          child: ListTile(
            leading: Stack(
              clipBehavior: Clip.none,
              children: [
                CircleAvatar(
                  backgroundColor: const Color(0xFF334155),
                  backgroundImage: hasPhoto ? NetworkImage(photoUrl) : null,
                  child: !hasPhoto ? Text(player.initials, style: const TextStyle(fontSize: 12, color: Colors.amber)) : null,
                ),
                if (badgeUrl.isNotEmpty)
                  Positioned(
                    bottom: -2,
                    right: -2,
                    child: Container(
                      width: 20,
                      height: 20,
                      decoration: const BoxDecoration(color: Color(0xFF0F172A), shape: BoxShape.circle),
                      child: ClipOval(
                        child: Image.network(
                          badgeUrl,
                          fit: BoxFit.contain,
                          errorBuilder: (_, __, ___) => const SizedBox.shrink(),
                        ),
                      ),
                    ),
                  ),
              ],
            ),
            title: Text(player.name, style: const TextStyle(color: Colors.white)),
            subtitle: Text(player.team + ' • ' + player.position + ' • [' + player.season + ']', style: const TextStyle(color: Colors.white70)),
            onTap: () => close(context, player),
          ),
        );
      },
    );
  }
}