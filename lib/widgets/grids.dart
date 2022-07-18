import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class SampleScreen extends StatefulWidget {
  @override
  _SampleScreenState createState() => _SampleScreenState();
}

class _SampleScreenState extends State<SampleScreen> {
  DataBean? player_data;
  LoadingDialog? pr;

  @override
  void initState() {
    super.initState();

    pr = LoadingDialog(
        context: context,
        dismissable: true,
        title: Text(
          "Loading",
          style: TextStyle(fontSize: 18, color: Colors.black),
        ),
        message: Text(
          "Please wait, we are processing your data",
          style: TextStyle(fontSize: 12),
        ));

    getData();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: true,
            title: Text(
              "Players Data",
            ),
          ),
          body: player_data != null
              ? player_data!.team1Squad!.homeTeamPlayingXI!.length > 0
                  ? GridView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisExtent: 100,
                      ),
                      itemCount:
                          player_data!.team1Squad!.homeTeamPlayingXI!.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          padding: EdgeInsets.symmetric(vertical: 5),
                          child: InkWell(
                            onTap: () async {
                              // on press
                            },
                            child: Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5)),
                              elevation: 5,
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              child: IntrinsicHeight(
                                child: Container(
                                  padding: EdgeInsets.all(10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: 50,
                                        alignment: Alignment.center,
                                        child: Text(
                                          player_data!
                                              .team1Squad!
                                              .homeTeamPlayingXI![index]
                                              .playerName!,
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.black),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    )
                  : Container()
              : Container()),
    );
  }

  Future<void> getData() async {
    var dio = Dio();
    var response = await dio.get(
      "https://api.sportsbuzz.com/sportradar/squad?tournament_id=sr:tournament:30620&match_id=sr:match:34723811&homeTeamId=sr:competitor:142712&awayTeamId=sr:competitor:210368",
    );
    if (response.statusCode == 200) {
      print(response);
      var data = json.decode('$response');
      player_data = DataBean.fromJson(data);
    } else {
      throw Exception();
    }
  }
}

class DataBean {
  DataBean({
    this.team1Squad,
    this.team2Squad,
  });

  DataBean.fromJson(dynamic json) {
    team1Squad = json['team1Squad'] != null
        ? Team1Squad.fromJson(json['team1Squad'])
        : null;
    team2Squad = json['team2Squad'] != null
        ? Team2Squad.fromJson(json['team2Squad'])
        : null;
  }
  Team1Squad? team1Squad;
  Team2Squad? team2Squad;
  DataBean copyWith({
    Team1Squad? team1Squad,
    Team2Squad? team2Squad,
  }) =>
      DataBean(
        team1Squad: team1Squad ?? this.team1Squad,
        team2Squad: team2Squad ?? this.team2Squad,
      );
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (team1Squad != null) {
      map['team1Squad'] = team1Squad?.toJson();
    }
    if (team2Squad != null) {
      map['team2Squad'] = team2Squad?.toJson();
    }
    return map;
  }
}

class Team2Squad {
  Team2Squad({
    this.awayTeamPlayingXI,
    this.awaynotPlaying,
  });

  Team2Squad.fromJson(dynamic json) {
    if (json['awayTeamPlayingXI'] != null) {
      awayTeamPlayingXI = [];
      json['awayTeamPlayingXI'].forEach((v) {
        awayTeamPlayingXI?.add(AwayTeamPlayingXi.fromJson(v));
      });
    }
    if (json['awaynotPlaying'] != null) {
      awaynotPlaying = [];
      json['awaynotPlaying'].forEach((v) {
        awaynotPlaying?.add(AwaynotPlaying.fromJson(v));
      });
    }
  }
  List<AwayTeamPlayingXi>? awayTeamPlayingXI;
  List<AwaynotPlaying>? awaynotPlaying;
  Team2Squad copyWith({
    List<AwayTeamPlayingXi>? awayTeamPlayingXI,
    List<AwaynotPlaying>? awaynotPlaying,
  }) =>
      Team2Squad(
        awayTeamPlayingXI: awayTeamPlayingXI ?? this.awayTeamPlayingXI,
        awaynotPlaying: awaynotPlaying ?? this.awaynotPlaying,
      );
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (awayTeamPlayingXI != null) {
      map['awayTeamPlayingXI'] =
          awayTeamPlayingXI?.map((v) => v.toJson()).toList();
    }
    if (awaynotPlaying != null) {
      map['awaynotPlaying'] = awaynotPlaying?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

class AwaynotPlaying {
  AwaynotPlaying({
    this.playerName,
    this.playerId,
    this.playertype,
    this.playerCmsDataExist,
  });

  AwaynotPlaying.fromJson(dynamic json) {
    playerName = json['playerName'];
    playerId = json['playerId'];
    playertype = json['playertype'];
    playerCmsDataExist = json['playerCmsDataExist'];
  }
  String? playerName;
  String? playerId;
  String? playertype;
  bool? playerCmsDataExist;
  AwaynotPlaying copyWith({
    String? playerName,
    String? playerId,
    String? playertype,
    bool? playerCmsDataExist,
  }) =>
      AwaynotPlaying(
        playerName: playerName ?? this.playerName,
        playerId: playerId ?? this.playerId,
        playertype: playertype ?? this.playertype,
        playerCmsDataExist: playerCmsDataExist ?? this.playerCmsDataExist,
      );
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['playerName'] = playerName;
    map['playerId'] = playerId;
    map['playertype'] = playertype;
    map['playerCmsDataExist'] = playerCmsDataExist;
    return map;
  }
}

class AwayTeamPlayingXi {
  AwayTeamPlayingXi({
    this.playerName,
    this.playerId,
    this.playertype,
    this.playerCmsDataExist,
  });

  AwayTeamPlayingXi.fromJson(dynamic json) {
    playerName = json['playerName'];
    playerId = json['playerId'];
    playertype = json['playertype'];
    playerCmsDataExist = json['playerCmsDataExist'];
  }
  String? playerName;
  String? playerId;
  String? playertype;
  bool? playerCmsDataExist;
  AwayTeamPlayingXi copyWith({
    String? playerName,
    String? playerId,
    String? playertype,
    bool? playerCmsDataExist,
  }) =>
      AwayTeamPlayingXi(
        playerName: playerName ?? this.playerName,
        playerId: playerId ?? this.playerId,
        playertype: playertype ?? this.playertype,
        playerCmsDataExist: playerCmsDataExist ?? this.playerCmsDataExist,
      );
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['playerName'] = playerName;
    map['playerId'] = playerId;
    map['playertype'] = playertype;
    map['playerCmsDataExist'] = playerCmsDataExist;
    return map;
  }
}

class Team1Squad {
  Team1Squad({
    this.homeTeamPlayingXI,
    this.homenotPlaying,
  });

  Team1Squad.fromJson(dynamic json) {
    if (json['homeTeamPlayingXI'] != null) {
      homeTeamPlayingXI = [];
      json['homeTeamPlayingXI'].forEach((v) {
        homeTeamPlayingXI?.add(HomeTeamPlayingXi.fromJson(v));
      });
    }
    if (json['homenotPlaying'] != null) {
      homenotPlaying = [];
      json['homenotPlaying'].forEach((v) {
        homenotPlaying?.add(HomenotPlaying.fromJson(v));
      });
    }
  }
  List<HomeTeamPlayingXi>? homeTeamPlayingXI;
  List<HomenotPlaying>? homenotPlaying;
  Team1Squad copyWith({
    List<HomeTeamPlayingXi>? homeTeamPlayingXI,
    List<HomenotPlaying>? homenotPlaying,
  }) =>
      Team1Squad(
        homeTeamPlayingXI: homeTeamPlayingXI ?? this.homeTeamPlayingXI,
        homenotPlaying: homenotPlaying ?? this.homenotPlaying,
      );
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (homeTeamPlayingXI != null) {
      map['homeTeamPlayingXI'] =
          homeTeamPlayingXI?.map((v) => v.toJson()).toList();
    }
    if (homenotPlaying != null) {
      map['homenotPlaying'] = homenotPlaying?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

class HomenotPlaying {
  HomenotPlaying({
    this.playerName,
    this.playerId,
    this.playertype,
    this.playerCmsDataExist,
  });

  HomenotPlaying.fromJson(dynamic json) {
    playerName = json['playerName'];
    playerId = json['playerId'];
    playertype = json['playertype'];
    playerCmsDataExist = json['playerCmsDataExist'];
  }
  String? playerName;
  String? playerId;
  String? playertype;
  bool? playerCmsDataExist;
  HomenotPlaying copyWith({
    String? playerName,
    String? playerId,
    String? playertype,
    bool? playerCmsDataExist,
  }) =>
      HomenotPlaying(
        playerName: playerName ?? this.playerName,
        playerId: playerId ?? this.playerId,
        playertype: playertype ?? this.playertype,
        playerCmsDataExist: playerCmsDataExist ?? this.playerCmsDataExist,
      );
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['playerName'] = playerName;
    map['playerId'] = playerId;
    map['playertype'] = playertype;
    map['playerCmsDataExist'] = playerCmsDataExist;
    return map;
  }
}

class HomeTeamPlayingXi {
  HomeTeamPlayingXi({
    this.playerName,
    this.playerId,
    this.playertype,
    this.playerCmsDataExist,
  });

  HomeTeamPlayingXi.fromJson(dynamic json) {
    playerName = json['playerName'];
    playerId = json['playerId'];
    playertype = json['playertype'];
    playerCmsDataExist = json['playerCmsDataExist'];
  }
  String? playerName;
  String? playerId;
  String? playertype;
  bool? playerCmsDataExist;
  HomeTeamPlayingXi copyWith({
    String? playerName,
    String? playerId,
    String? playertype,
    bool? playerCmsDataExist,
  }) =>
      HomeTeamPlayingXi(
        playerName: playerName ?? this.playerName,
        playerId: playerId ?? this.playerId,
        playertype: playertype ?? this.playertype,
        playerCmsDataExist: playerCmsDataExist ?? this.playerCmsDataExist,
      );
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['playerName'] = playerName;
    map['playerId'] = playerId;
    map['playertype'] = playertype;
    map['playerCmsDataExist'] = playerCmsDataExist;
    return map;
  }
}

class LoadingDialog {
  LoadingDialog({
    required this.context,
    required this.title,
    required this.message,
    required this.dismissable,
  });

  final Widget title;
  final Widget message;
  final bool dismissable;
  final BuildContext context;
  bool isShowing = false;

  void show() {
    if (!isShowing) {
      showGeneralDialog(
        barrierDismissible: dismissable,
        context: context,
        pageBuilder: (
          _,
          __,
          ____,
        ) {
          return LoadingDialog_ui(
              title: title, message: message, dismissable: dismissable);
        },
      );
      isShowing = true;
    }
  }

  void dismiss() {
    if (isShowing) {
      Navigator.of(context, rootNavigator: true).pop();
      isShowing = false;
    }
  }
}

class LoadingDialog_ui extends StatelessWidget {
  const LoadingDialog_ui({
    Key? key,
    required this.title,
    required this.message,
    required this.dismissable,
  }) : super(key: key);

  final Widget title;
  final Widget message;
  final bool dismissable;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => dismissable ? true : false,
      child: Container(
        height: double.infinity,
        alignment: Alignment.bottomCenter,
        child: Container(
          width: double.infinity,
          height: 100,
          child: Card(
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10))),
            elevation: 10,
            child: Container(
                padding: EdgeInsets.all(20),
                child: Row(
                  children: [
                    CircularProgressIndicator(),
                    // spaceWidth(20),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [title, spaceHeight(10), message],
                    ),
                  ],
                )),
          ),
        ),
      ),
    );
  }
}

Widget spaceHeight(double height) {
  return SizedBox(
    height: height,
  );
}

Widget spaceWidth(double width) {
  return SizedBox(
    width: width,
  );
}
