import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:linktree_clone/utils/constants.utils.dart';
import 'package:linktree_clone/views/home.view.dart';
import 'package:linktree_clone/views/splash.view.dart';


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
      title: 'Linktree Clone',
      theme: ThemeData(
        primaryColor: primaryColor,
        textTheme: GoogleFonts.karlaTextTheme(
          Theme.of(context).textTheme
        )
      ),
      home: HomeView(),
    );
  }
}
