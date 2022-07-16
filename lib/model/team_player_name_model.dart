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
