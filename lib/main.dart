import 'package:flutter/material.dart';
import 'package:linktree_clone/constants/app.constants.dart';
import 'package:linktree_clone/views/home.view.dart';

void main() {
  runApp(Core());
}

class Core extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Lava();
  }
}

class Lava extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BMI Calculator',
      theme: ThemeData(
        primaryColor: primaryColor,
      ),
     home: HomeView(),
    );
  }
}