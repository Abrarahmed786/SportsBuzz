import 'package:flutter/material.dart';

class ICCList extends StatelessWidget {
  const ICCList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            bottom: PreferredSize(
                preferredSize: const Size.fromHeight(30.0),
                child: TabBar(
                    unselectedLabelColor: Colors.white.withOpacity(0.3),
                    indicatorColor: Colors.white,
                    tabs: const [
                      Tab(
                        child: Text('ODI'),
                      ),
                      Tab(
                        child: Text('T20'),
                      ),
                      Tab(
                        child: Text('Test'),
                      ),
                    ])),
          ),
          body: TabBarView(
            children: [ICCList(), ICCList(), ICCList()],
          )),
    );
  }
}
