class Player {
  final String id;
  final String season;
  final String name;
  final String team;
  final String position;
  final String photoUrl;
  final String country;
  final int age;
  final String teamBadgeUrl;

  final int matches;
  final int lineups;
  final int minutesPlayed;

  final int goals;
  final int assists;
  final int shots;
  final int shotsTotal;
  final int shotsOff;
  final int dribblesAttempts;
  final int dribblesSuccess;

  final int passesTotal;
  final int passesKey;
  final double passAccuracy;
  final int passesLong;

  final int tacklesTotal;
  final int interceptions;
  final int blocks;
  final int duelsTotal;
  final int duelsWon;
  final int duelsAerialWon;

  final int foulsCommitted;
  final int foulsDrawn;
  final int yellowCards;
  final int redCards;

  final int saves;
  final int goalsConceded;
  
  // Campo añadido para el rating que viene de DynamoDB
  final double apiRating;

  Player({
    required this.id,
    required this.season,
    required this.name,
    required this.team,
    required this.position,
    required this.photoUrl,
    this.country = '',
    this.age = 0,
    this.teamBadgeUrl = '',
    required this.matches,
    required this.lineups,
    required this.minutesPlayed,
    required this.goals,
    required this.assists,
    required this.shots,
    required this.shotsTotal,
    required this.shotsOff,
    required this.dribblesAttempts,
    required this.dribblesSuccess,
    required this.passesTotal,
    required this.passesKey,
    required this.passAccuracy,
    required this.passesLong,
    required this.tacklesTotal,
    required this.interceptions,
    required this.blocks,
    required this.duelsTotal,
    required this.duelsWon,
    required this.duelsAerialWon,
    required this.foulsCommitted,
    required this.foulsDrawn,
    required this.yellowCards,
    required this.redCards,
    required this.saves,
    required this.goalsConceded,
    this.apiRating = 0.0,
  });

  // Getter para que puedas seguir llamándolo como .rating en tu UI
  double get rating => apiRating;

  factory Player.fromJson(Map<String, dynamic> json) {
    num parseNum(dynamic value) {
      if (value == null) return 0;
      if (value is num) return value;
      if (value is Map && value.containsKey('N')) {
        return num.tryParse(value['N'].toString()) ?? 0;
      }
      return num.tryParse(value.toString()) ?? 0;
    }

    String parseString(dynamic value) {
      if (value == null) return '';
      if (value is String) return value;
      if (value is Map && value.containsKey('S')) {
        return value['S'].toString();
      }
      return value.toString();
    }

    return Player(
      id: parseString(json['player_id']),
      season: parseString(json['season']),
      name: parseString(json['player_name']),
      team: parseString(json['team_name']),
      position: parseString(json['position']),
      photoUrl: parseString(json['photo']),
      country: parseString(json['nationality']),
      age: parseNum(json['age']).toInt(),
      teamBadgeUrl: parseString(json['team_logo']),
      
      matches: parseNum(json['appearances']).toInt(),
      lineups: parseNum(json['lineups']).toInt(),
      minutesPlayed: parseNum(json['minutes']).toInt(),
      goals: parseNum(json['goals']).toInt(),
      assists: parseNum(json['assists']).toInt(),
      shots: parseNum(json['shots_on']).toInt(),
      shotsTotal: parseNum(json['shots_total']).toInt(),
      shotsOff: 0,
      dribblesAttempts: parseNum(json['dribbles_attempts']).toInt(),
      dribblesSuccess: parseNum(json['dribbles_success']).toInt(),
      passesTotal: parseNum(json['passes_total']).toInt(),
      passesKey: parseNum(json['passes_key']).toInt(),
      passAccuracy: parseNum(json['passes_accuracy']).toDouble(),
      passesLong: 0,
      tacklesTotal: parseNum(json['tackles_total']).toInt(),
      interceptions: parseNum(json['interceptions']).toInt(),
      blocks: parseNum(json['blocks']).toInt(),
      duelsTotal: parseNum(json['duels_total']).toInt(),
      duelsWon: parseNum(json['duels_won']).toInt(),
      duelsAerialWon: parseNum(json['duels_won']).toInt(),
      foulsCommitted: parseNum(json['fouls_committed']).toInt(),
      foulsDrawn: parseNum(json['fouls_drawn']).toInt(),
      yellowCards: parseNum(json['yellow_cards']).toInt(),
      redCards: parseNum(json['red_cards']).toInt(),
      saves: parseNum(json['saves']).toInt(),
      goalsConceded: parseNum(json['goals_conceded']).toInt(),
      // Aquí mapeamos correctamente el campo rating de DynamoDB que viene como {"N": "7.3"} gracias a tu helper parseNum
      apiRating: parseNum(json['rating']).toDouble(),
    );
  }

  String get initials {
    if (name.trim().isEmpty) {
      return 'PL';
    }
    final parts = name.trim().split(' ');
    if (parts.length >= 2 && parts[0].isNotEmpty && parts[1].isNotEmpty) {
      return '${parts[0][0]}${parts[1][0]}'.toUpperCase();
    } else if (parts.isNotEmpty && parts[0].isNotEmpty) {
      return parts[0][0].toUpperCase();
    }
    return 'PL';
  }
}