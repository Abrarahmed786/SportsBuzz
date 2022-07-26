import 'package:flutter/material.dart';
import 'package:sportsbuzz/ui/icc/widget/list_odi.dart';

class ICCList extends StatelessWidget {
  const ICCList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: AppBar(
            toolbarHeight: 0,
            elevation: 0,
            bottom: TabBar(
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
                ]),
          ),
          body: const TabBarView(
            children: <Widget>[
              ListOdis(),
              ListOdis(),
              ListOdis(),
            ],
          )),
    );
  }
}
