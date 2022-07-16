import 'dart:convert';
import 'dart:math';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:sportsbuzz/model/team_player_name_model.dart';

class NetworkRequest {
  static const String _url =
      'https://api.sportsbuzz.com/sportradar/squad?tournament_id=sr:tournament:30620&match_id=sr:match:34723811&homeTeamId=sr:competitor:142712&awayTeamId=sr:competitor:210368';

  static List<Team1Squad> parseTeam1Squad(String responseBody) {
    var list = json.decode(responseBody) as List<dynamic>;
    List<Team1Squad> team1Squad =
        list.map((e) => Team1Squad.fromJson(e)).toList();
    return team1Squad;
  }

  static Future<List<Team1Squad>> fetchTeam1Squad() async {
    final Uri url = Uri.parse(_url);

    final response = await http.get(url);
    if (response.statusCode == 200) {
      return compute(parseTeam1Squad, response.body);
    } else {
      print(e);
      throw Exception("No Name");
    }
  }
}
