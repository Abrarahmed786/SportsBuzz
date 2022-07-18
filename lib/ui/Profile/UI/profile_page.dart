import 'package:flutter/material.dart';
import 'package:sportsbuzz/ui/Profile/widgets/fav_player.dart';
import 'package:sportsbuzz/ui/Profile/widgets/fav_series.dart';
import 'package:sportsbuzz/ui/Profile/widgets/fav_team.dart';

import 'package:sportsbuzz/ui/Profile/widgets/profile_tag.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff000000),
      appBar: AppBar(
        elevation: 0,
        title: Row(
          children: [
            Image.asset(
              'assets/logo.png',
              height: 31,
              width: 125,
            ),
            const Spacer(),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.notifications_outlined),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search_outlined),
            ),
          ],
        ),
        backgroundColor: const Color(0xff000000),
      ),
      body: SingleChildScrollView(
          child: Column(
        children: const [
          SizedBox(
            height: 18,
          ),
          ProfileTag(),
          SizedBox(
            height: 18,
          ),
          Divider(
            color: Color(0xffFFFFFF),
          ),
          FavPlayer(),
          SizedBox(
            height: 30,
          ),
          FavTeamCard(),
          SizedBox(
            height: 30,
          ),
          FavSeries()
        ],
      )),
    );
  }
}
