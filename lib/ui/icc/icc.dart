import 'package:flutter/material.dart';
import 'package:sportsbuzz/ui/icc/widget/crickter_list.dart';

class ICC extends StatelessWidget {
  const ICC({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: const Text(
              "ICC Men's Ranking",
              style: TextStyle(fontSize: 16.0),
            ),
            bottom: PreferredSize(
                preferredSize: const Size.fromHeight(30.0),
                child: TabBar(
                    isScrollable: true,
                    unselectedLabelColor: Colors.white.withOpacity(0.3),
                    indicatorColor: Colors.white,
                    tabs: const [
                      Tab(
                        child: Text('Team'),
                      ),
                      Tab(
                        child: Text('Batter'),
                      ),
                      Tab(
                        child: Text('Bowler'),
                      ),
                      Tab(
                        child: Text('All Rounder'),
                      ),
                      Tab(
                        child: Text('Tab 5'),
                      ),
                      Tab(
                        child: Text('Tab 6'),
                      )
                    ])),
          ),
          body: const TabBarView(
            children: <Widget>[
              ICCList(),
              ICCList(),
              ICCList(),
              ICCList(),
              ICCList(),
              ICCList(),
            ],
          )),
    );
  }
}
