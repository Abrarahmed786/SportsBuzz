import 'package:flutter/material.dart';
import 'package:sportsbuzz/ui/expert_analysis/ui/expert_analysis.dart';
import 'package:sportsbuzz/ui/home_page.dart';
import 'package:sportsbuzz/ui/Profile/UI/profile_page.dart';
import 'package:sportsbuzz/ui/icc/icc.dart';
import 'package:sportsbuzz/ui/master-class/ui/master_class.dart';
import 'package:sportsbuzz/widgets/grids.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ExpertAnalysis(),
    );
  }
}
