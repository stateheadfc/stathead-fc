import 'dart:convert';
import 'package:http/http.dart' as http;
import 'player_model.dart';

class PlayerService {
  final String _mlsUrl = 'https://ephcukoqkk643jqrtxkshts6ti0vitew.lambda-url.us-east-2.on.aws/';
  final String _ligaMxUrl = 'https://ephcukoqkk643jqrtxkshts6ti0vitew.lambda-url.us-east-2.on.aws/';

  Future<List<Player>> fetchPlayers({String league = 'mls', String season = '2024'}) async {
    try {
      final normalizedLeague = league.toLowerCase().replaceAll(' ', '');
      final isLigaMx = normalizedLeague == 'ligamx' || normalizedLeague.contains('mexico');
      final baseUrl = isLigaMx ? _ligaMxUrl : _mlsUrl;
      
      // Limpiamos la temporada base por si acaso trae residuos
      final cleanBaseSeason = season.replaceAll('_MX', '').trim();
      
      // Si es Liga MX aseguramos el sufijo '_MX', de lo contrario dejamos el año limpio para MLS
      final querySeason = isLigaMx ? '${cleanBaseSeason}_MX' : cleanBaseSeason;
      
      final response = await http.get(Uri.parse('$baseUrl?season=$querySeason'));
      
      // --- PRINT DE EMERGENCIA PARA DEPURAR ---
      print('DEBUG URL CONSULTADA: $baseUrl?season=$querySeason');
      print('DEBUG STATUS CODE: ${response.statusCode}');
      print('DEBUG CUERPO DE RESPUESTA: ${response.body}');
      // ----------------------------------------
      
      if (response.statusCode == 200) {
        final dynamic decoded = jsonDecode(response.body);

        List itemsList = [];
        if (decoded is List) {
          itemsList = decoded;
        } else if (decoded is Map) {
          if (decoded.containsKey('body')) {
            final innerBody = decoded['body'];
            itemsList = innerBody is String ? jsonDecode(innerBody) : innerBody;
          } else if (decoded.containsKey('items')) {
            itemsList = decoded['items'];
          }
        }

        if (itemsList is! List) {
          return [];
        }
        
        return itemsList
            .where((item) => item is Map<String, dynamic>)
            .map((item) {
              final jsonMap = Map<String, dynamic>.from(item);
              final player = Player.fromDynamoJson(jsonMap);
              
              final correctLeague = isLigaMx ? 'Liga MX' : 'MLS';
              return player.copyWithLeague(correctLeague);
            })
            .toList();
      } else {
        return [];
      }
    } catch (e) {
      print('DEBUG Excepción al obtener jugadores de $league ($season): $e');
      return [];
    }
  }

  Future<List<Player>> fetchAllLeaguesCombined({String season = '2024'}) async {
    try {
      final results = await Future.wait([
        fetchPlayers(league: 'mls', season: season),
        fetchPlayers(league: 'ligamx', season: season),
      ]);

      return [...results[0], ...results[1]];
    } catch (e) {
      print('DEBUG Error al combinar ligas: $e');
      rethrow;
    }
  }
}