import 'package:flutter/material.dart';
import 'package:sportsbuzz/model/team_player_name_model.dart';

class PlayerInfo extends StatelessWidget {
  @required
  final Team1Squad team1Squad;

  const PlayerInfo({Key? key, required this.team1Squad}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRect(
          child: Text(
            team1Squad.homeTeamPlayingXi![1].playerName.toString(),
            style: const TextStyle(color: Colors.white),
          ),
        )
      ],
    );
  }
}
