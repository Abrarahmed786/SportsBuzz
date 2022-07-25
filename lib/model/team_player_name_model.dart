// import 'dart:async';
// import 'dart:convert';

// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;

// Future<Album> fetchAlbum() async {
//   final response = await http
//       .get(Uri.parse('https://jsonplaceholder.typicode.com/albums/1'));

//   if (response.statusCode == 200) {

//     return Album.fromJson(jsonDecode(response.body));
//   } else {

//     throw Exception('Failed to load album');
//   }
// }

// class Album {
//   final int userId;
//   final int id;
//   final String title;

//   const Album({
//     required this.userId,
//     required this.id,
//     required this.title,
//   });

//   factory Album.fromJson(Map<String, dynamic> json) {
//     return Album(
//       userId: json['userId'],
//       id: json['id'],
//       title: json['title'],
//     );
//   }
// }

// import 'dart:convert';
// import 'package:http/http.dart' as http;
// import 'package:intl/intl.dart';

// class PlayerInfo {
//   String? playerName;
//   String? playerId;
//   String? playertype;
//   bool? playerCmsDataExist;

//   PlayerInfo({
//     this.playerName,
//     this.playerId,
//     this.playertype,
//     this.playerCmsDataExist,
//   });
// }

// String tournament_id = "sr:tournament:30620";
// String match_id = "sr:match:34723811";
// String homeTeamId = "sr:competitor:142712";
// String awayTeamId = "sr:competitor:210368";

// Future<List> fetchData(
//   String playerName,
//   String playerId,
//   String Playertype,
//   String playerCmsDataExist,
// ) async {
//   var url =
//       "https://api.sportsbuzz.com/sportradar/squad?tournament_id=sr:tournament:30620&match_id=sr:match:34723811&homeTeamId=sr:competitor:142712&awayTeamId=sr:competitor:210368";
//   var response = await http.get(Uri.parse(url));
//   if (response.statusCode == 200) {
//     var res = json.decode(response.body);

//     var playerName = res["homeTeamPlayingXI"]["playerName"].toString();
//     var playerId = res["homeTeamPlayingXI"]["playerId"].toString();
//     var playertype = res["homeTeamPlayingXI"]["playertype"].toString();
//     var playerCmsDataExist =
//         res["homeTeamPlayingXI"]["playerCmsDataExist"].toString();
//   }
// }

// ignore_for_file: constant_identifier_names

import 'dart:convert';

TeamPlayerName teamPlayerNameFromJson(String str) =>
    TeamPlayerName.fromJson(json.decode(str));

String teamPlayerNameToJson(TeamPlayerName data) => json.encode(data.toJson());

class TeamPlayerName {
  TeamPlayerName({
    this.team1Squad,
    this.team2Squad,
  });

  Team1Squad? team1Squad;
  Team2Squad? team2Squad;

  factory TeamPlayerName.fromJson(Map<String, dynamic> json) => TeamPlayerName(
        team1Squad: Team1Squad.fromJson(json["team1Squad"]),
        team2Squad: Team2Squad.fromJson(json["team2Squad"]),
      );

  Map<String, dynamic> toJson() => {
        "team1Squad": team1Squad!.toJson(),
        "team2Squad": team2Squad!.toJson(),
      };
}

class Team1Squad {
  Team1Squad({
    this.homeTeamPlayingXi,
    this.homenotPlaying,
  });

  List<TeamPlayingXi>? homeTeamPlayingXi;
  List<dynamic>? homenotPlaying;

  factory Team1Squad.fromJson(Map<String, dynamic> json) => Team1Squad(
        homeTeamPlayingXi: List<TeamPlayingXi>.from(
            json["homeTeamPlayingXI"].map((x) => TeamPlayingXi.fromJson(x))),
        homenotPlaying:
            List<dynamic>.from(json["homenotPlaying"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "homeTeamPlayingXI":
            List<dynamic>.from(homeTeamPlayingXi!.map((x) => x.toJson())),
        "homenotPlaying": List<dynamic>.from(homenotPlaying!.map((x) => x)),
      };
}

class TeamPlayingXi {
  TeamPlayingXi({
    this.playerName,
    this.playerId,
    this.playertype,
    this.playerCmsDataExist,
  });

  String? playerName;
  String? playerId;
  Playertype? playertype;
  bool? playerCmsDataExist;

  factory TeamPlayingXi.fromJson(Map<String, dynamic> json) => TeamPlayingXi(
        playerName: json["playerName"],
        playerId: json["playerId"],
        playertype: playertypeValues.map![json["playertype"]],
        playerCmsDataExist: json["playerCmsDataExist"],
      );

  Map<String, dynamic> toJson() => {
        "playerName": playerName,
        "playerId": playerId,
        "playertype": playertypeValues.reverse![playertype],
        "playerCmsDataExist": playerCmsDataExist,
      };
}

enum Playertype {
  WICKET_KEEPER,
  BATSMAN,
  ALL_ROUNDER,
  BOWLER,
}

final playertypeValues = EnumValues({
  "All Rounder": Playertype.ALL_ROUNDER,
  "Batsman": Playertype.BATSMAN,
  "Bowler": Playertype.BOWLER,
  "Wicket Keeper": Playertype.WICKET_KEEPER
});

class Team2Squad {
  Team2Squad({
    this.awayTeamPlayingXi,
    this.awaynotPlaying,
  });

  List<TeamPlayingXi>? awayTeamPlayingXi;
  List<dynamic>? awaynotPlaying;

  factory Team2Squad.fromJson(Map<String, dynamic> json) => Team2Squad(
        awayTeamPlayingXi: List<TeamPlayingXi>.from(
            json["awayTeamPlayingXI"].map((x) => TeamPlayingXi.fromJson(x))),
        awaynotPlaying:
            List<dynamic>.from(json["awaynotPlaying"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "awayTeamPlayingXI":
            List<dynamic>.from(awayTeamPlayingXi!.map((x) => x.toJson())),
        "awaynotPlaying": List<dynamic>.from(awaynotPlaying!.map((x) => x)),
      };
}

class EnumValues<T> {
  Map<String, T>? map;
  Map<T, String>? reverseMap;

  EnumValues(this.map);

  Map<T, String>? get reverse {
    reverseMap ??= map!.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
