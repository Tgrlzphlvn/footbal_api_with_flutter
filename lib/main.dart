import 'package:flutter/material.dart';
import 'package:football_leagues/features/view/leagues_view.dart';
import 'package:football_leagues/product/constants/project_constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: ProjectConstants.appTitle,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LeaguesView(),
    );
  }
}
