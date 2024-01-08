import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:linktree_clone/utils/constants.utils.dart';
import 'package:linktree_clone/views/home_screen.dart';

void main() {
  runApp(const Core());
}

class Core extends StatelessWidget {
  const Core({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const App();
  }
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Linktree Clone',
      theme: ThemeData(
          primaryColor: primaryColor,
          textTheme: GoogleFonts.karlaTextTheme(Theme.of(context).textTheme)),
      home: const HomeView(),
    );
  }
}
