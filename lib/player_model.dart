class Player {
  final String id;
  final String season;
  final String league;
  final int age;
  final int matches;
  final int assists;
  final String birthCountry;
  final String birthDate;
  final String birthPlace;
  final int blocks;
  final bool captain;
  final int dribblesAttempts;
  final int dribblesPast;
  final int dribblesSuccess;
  final int duelsTotal;
  final int duelsWon;
  final String firstName;
  final int foulsCommitted;
  final int foulsDrawn;
  final int goals;
  final int goalsConceded;
  final String height;
  final bool injured;
  final int interceptions;
  final String lastName;
  final int lineups;
  final int minutesPlayed;
  final String country;
  final int number;
  final double passesAccuracy;
  final int passesKey;
  final int passesTotal;
  final int penaltyCommitted;
  final int penaltyMissed;
  final int penaltySaved;
  final int penaltyScored;
  final int penaltyWon;
  final String photoUrl;
  final String name;
  final String position;
  final double apiRating;
  final int redCards;
  final int saves;
  final int shots;
  final int shotsTotal;
  final int subBench;
  final int subIn;
  final int subOut;
  final int tacklesTotal;
  final String teamBadgeUrl;
  final String team;
  final String weight;
  final int yellowCards;
  final int yellowRedCards;

  Player({
    required this.id,
    required this.season,
    required this.league,
    required this.age,
    required this.matches,
    required this.assists,
    required this.birthCountry,
    required this.birthDate,
    required this.birthPlace,
    required this.blocks,
    required this.captain,
    required this.dribblesAttempts,
    required this.dribblesPast,
    required this.dribblesSuccess,
    required this.duelsTotal,
    required this.duelsWon,
    required this.firstName,
    required this.foulsCommitted,
    required this.foulsDrawn,
    required this.goals,
    required this.goalsConceded,
    required this.height,
    required this.injured,
    required this.interceptions,
    required this.lastName,
    required this.lineups,
    required this.minutesPlayed,
    required this.country,
    required this.number,
    required this.passesAccuracy,
    required this.passesKey,
    required this.passesTotal,
    required this.penaltyCommitted,
    required this.penaltyMissed,
    required this.penaltySaved,
    required this.penaltyScored,
    required this.penaltyWon,
    required this.photoUrl,
    required this.name,
    required this.position,
    required this.apiRating,
    required this.redCards,
    required this.saves,
    required this.shots,
    required this.shotsTotal,
    required this.subBench,
    required this.subIn,
    required this.subOut,
    required this.tacklesTotal,
    required this.teamBadgeUrl,
    required this.team,
    required this.weight,
    required this.yellowCards,
    required this.yellowRedCards,
  });

  double get rating => apiRating;

  String get initials {
    if (name.isEmpty) return '??';
    final parts = name.trim().split(' ');
    if (parts.length >= 2) {
      return '${parts[0][0]}${parts[1][0]}'.toUpperCase();
    }
    return name.substring(0, name.length >= 2 ? 2 : 1).toUpperCase();
  }

  Player copyWithSeason(String newSeason) {
    return Player(
      id: id,
      season: newSeason,
      league: league,
      age: age,
      matches: matches,
      assists: assists,
      birthCountry: birthCountry,
      birthDate: birthDate,
      birthPlace: birthPlace,
      blocks: blocks,
      captain: captain,
      dribblesAttempts: dribblesAttempts,
      dribblesPast: dribblesPast,
      dribblesSuccess: dribblesSuccess,
      duelsTotal: duelsTotal,
      duelsWon: duelsWon,
      firstName: firstName,
      foulsCommitted: foulsCommitted,
      foulsDrawn: foulsDrawn,
      goals: goals,
      goalsConceded: goalsConceded,
      height: height,
      injured: injured,
      interceptions: interceptions,
      lastName: lastName,
      lineups: lineups,
      minutesPlayed: minutesPlayed,
      country: country,
      number: number,
      passesAccuracy: passesAccuracy,
      passesKey: passesKey,
      passesTotal: passesTotal,
      penaltyCommitted: penaltyCommitted,
      penaltyMissed: penaltyMissed,
      penaltySaved: penaltySaved,
      penaltyScored: penaltyScored,
      penaltyWon: penaltyWon,
      photoUrl: photoUrl,
      name: name,
      position: position,
      apiRating: apiRating,
      redCards: redCards,
      saves: saves,
      shots: shots,
      shotsTotal: shotsTotal,
      subBench: subBench,
      subIn: subIn,
      subOut: subOut,
      tacklesTotal: tacklesTotal,
      teamBadgeUrl: teamBadgeUrl,
      team: team,
      weight: weight,
      yellowCards: yellowCards,
      yellowRedCards: yellowRedCards,
    );
  }

  Player copyWithLeague(String newLeague) {
    return Player(
      id: id,
      season: season,
      league: newLeague,
      age: age,
      matches: matches,
      assists: assists,
      birthCountry: birthCountry,
      birthDate: birthDate,
      birthPlace: birthPlace,
      blocks: blocks,
      captain: captain,
      dribblesAttempts: dribblesAttempts,
      dribblesPast: dribblesPast,
      dribblesSuccess: dribblesSuccess,
      duelsTotal: duelsTotal,
      duelsWon: duelsWon,
      firstName: firstName,
      foulsCommitted: foulsCommitted,
      foulsDrawn: foulsDrawn,
      goals: goals,
      goalsConceded: goalsConceded,
      height: height,
      injured: injured,
      interceptions: interceptions,
      lastName: lastName,
      lineups: lineups,
      minutesPlayed: minutesPlayed,
      country: country,
      number: number,
      passesAccuracy: passesAccuracy,
      passesKey: passesKey,
      passesTotal: passesTotal,
      penaltyCommitted: penaltyCommitted,
      penaltyMissed: penaltyMissed,
      penaltySaved: penaltySaved,
      penaltyScored: penaltyScored,
      penaltyWon: penaltyWon,
      photoUrl: photoUrl,
      name: name,
      position: position,
      apiRating: apiRating,
      redCards: redCards,
      saves: saves,
      shots: shots,
      shotsTotal: shotsTotal,
      subBench: subBench,
      subIn: subIn,
      subOut: subOut,
      tacklesTotal: tacklesTotal,
      teamBadgeUrl: teamBadgeUrl,
      team: team,
      weight: weight,
      yellowCards: yellowCards,
      yellowRedCards: yellowRedCards,
    );
  }

  Player accumulate(Player other) {
    return Player(
      id: id,
      season: 'ALL',
      league: league,
      age: other.age > age ? other.age : age,
      matches: matches + other.matches,
      assists: assists + other.assists,
      birthCountry: birthCountry,
      birthDate: birthDate,
      birthPlace: birthPlace,
      blocks: blocks + other.blocks,
      captain: captain || other.captain,
      dribblesAttempts: dribblesAttempts + other.dribblesAttempts,
      dribblesPast: dribblesPast + other.dribblesPast,
      dribblesSuccess: dribblesSuccess + other.dribblesSuccess,
      duelsTotal: duelsTotal + other.duelsTotal,
      duelsWon: duelsWon + other.duelsWon,
      firstName: firstName,
      foulsCommitted: foulsCommitted + other.foulsCommitted,
      foulsDrawn: foulsDrawn + other.foulsDrawn,
      goals: goals + other.goals,
      goalsConceded: goalsConceded + other.goalsConceded,
      height: height,
      injured: injured,
      interceptions: interceptions + other.interceptions,
      lastName: lastName,
      lineups: lineups + other.lineups,
      minutesPlayed: minutesPlayed + other.minutesPlayed,
      country: country,
      number: number,
      passesAccuracy: (passesAccuracy + other.passesAccuracy) / 2,
      passesKey: passesKey + other.passesKey,
      passesTotal: passesTotal + other.passesTotal,
      penaltyCommitted: penaltyCommitted + other.penaltyCommitted,
      penaltyMissed: penaltyMissed + other.penaltyMissed,
      penaltySaved: penaltySaved + other.penaltySaved,
      penaltyScored: penaltyScored + other.penaltyScored,
      penaltyWon: penaltyWon + other.penaltyWon,
      photoUrl: photoUrl,
      name: name,
      position: position,
      apiRating: (apiRating + other.apiRating) / 2,
      redCards: redCards + other.redCards,
      saves: saves + other.saves,
      shots: shots + other.shots,
      shotsTotal: shotsTotal + other.shotsTotal,
      subBench: subBench + other.subBench,
      subIn: subIn + other.subIn,
      subOut: subOut + other.subOut,
      tacklesTotal: tacklesTotal + other.tacklesTotal,
      teamBadgeUrl: teamBadgeUrl,
      team: other.team,
      weight: weight,
      yellowCards: yellowCards + other.yellowCards,
      yellowRedCards: yellowRedCards + other.yellowRedCards,
    );
  }

  factory Player.fromDynamoJson(Map<String, dynamic> item) {
    int getInt(String key) {
      final val = item[key];
      if (val == null) return 0;
      if (val is num) return val.toInt();
      return int.tryParse(val.toString()) ?? 0;
    }

    double getDouble(String key) {
      final val = item[key];
      if (val == null) return 0.0;
      if (val is num) return val.toDouble();
      return double.tryParse(val.toString()) ?? 0.0;
    }

    String getString(String key) {
      final val = item[key];
      if (val == null) return '';
      if (val is Map && val.containsKey('S')) {
        return val['S'].toString();
      }
      return val.toString();
    }

    bool getBool(String key) {
      final val = item[key];
      if (val == null) return false;
      if (val is bool) return val;
      if (val is Map && val.containsKey('BOOL')) {
        return val['BOOL'] == true;
      }
      return val.toString().toLowerCase() == 'true';
    }

    final rawSeason = getString('season');
    final cleanSeason = rawSeason.replaceAll(RegExp(r'MX_', caseSensitive: false), '');
    
    String assignedLeague = getString('league');
    if (assignedLeague.isEmpty) {
      assignedLeague = rawSeason.toUpperCase().startsWith('MX_') ? 'Liga MX' : 'MLS';
    }

    return Player(
      id: getString('player_id'),
      season: cleanSeason,
      league: assignedLeague,
      age: getInt('age'),
      matches: getInt('appearances'),
      assists: getInt('assists'),
      birthCountry: getString('birth_country'),
      birthDate: getString('birth_date'),
      birthPlace: getString('birth_place'),
      blocks: getInt('blocks'),
      captain: getBool('captain'),
      dribblesAttempts: getInt('dribbles_attempts'),
      dribblesPast: getInt('dribbles_past'),
      dribblesSuccess: getInt('dribbles_success'),
      duelsTotal: getInt('duels_total'),
      duelsWon: getInt('duels_won'),
      firstName: getString('firstname'),
      foulsCommitted: getInt('fouls_committed'),
      foulsDrawn: getInt('fouls_drawn'),
      goals: getInt('goals'),
      goalsConceded: getInt('goals_conceded'),
      height: getString('height'),
      injured: getBool('injured'),
      interceptions: getInt('interceptions'),
      lastName: getString('lastname'),
      lineups: getInt('lineups'),
      minutesPlayed: getInt('minutes'),
      country: getString('nationality'),
      number: getInt('number'),
      passesAccuracy: getDouble('passes_accuracy'),
      passesKey: getInt('passes_key'),
      passesTotal: getInt('passes_total'),
      penaltyCommitted: getInt('penalty_committed'),
      penaltyMissed: getInt('penalty_missed'),
      penaltySaved: getInt('penalty_saved'),
      penaltyScored: getInt('penalty_scored'),
      penaltyWon: getInt('penalty_won'),
      photoUrl: getString('photo'),
      name: getString('player_name'),
      position: getString('position'),
      apiRating: getDouble('rating'),
      redCards: getInt('red_cards'),
      saves: getInt('saves'),
      shots: getString('shots_on').isNotEmpty ? getInt('shots_on') : getInt('shots'),
      shotsTotal: getInt('shots_total'),
      subBench: getInt('sub_bench'),
      subIn: getInt('sub_in'),
      subOut: getInt('sub_out'),
      tacklesTotal: getInt('tackles_total'),
      teamBadgeUrl: getString('team_logo'),
      team: getString('team_name'),
      weight: getString('weight'),
      yellowCards: getInt('yellow_cards'),
      yellowRedCards: getInt('yellow_red_cards'),
    );
  }
}