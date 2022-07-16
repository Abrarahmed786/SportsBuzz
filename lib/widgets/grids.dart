import 'package:flutter/material.dart';
import 'package:sportsbuzz/model/team_player_name_model.dart';
import 'package:sportsbuzz/service/api_request.dart';
import 'package:sportsbuzz/widgets/grid_cell.dart';

class Grids extends StatelessWidget {
  const Grids({Key? key}) : super(key: key);

  gridView(AsyncSnapshot<List<Team1Squad>> snapshot) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: GridView.count(
        crossAxisCount: 2,
        childAspectRatio: 1,
        mainAxisSpacing: 4,
        crossAxisSpacing: 4,
        children: snapshot.data!.map((team1Squad) {
          return GridTile(
            child: PlayerInfo(
              team1Squad: team1Squad,
            ),
          );
        }).toList(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Team1Squad>>(
      future: NetworkRequest.fetchTeam1Squad(),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return Text("Error ${snapshot.error}");
        } else if (snapshot.hasData) {
          return gridView(snapshot);
        }
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }
}
