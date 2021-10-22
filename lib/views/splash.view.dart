import 'dart:async';

import 'package:flutter/material.dart';
import 'package:linktree_clone/views/home.view.dart';

class SplashView extends StatefulWidget {
  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  _redirectHomescreen() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => HomeView()));
  }

  @override
  void initState() {
    Timer(const Duration(milliseconds: 2), _redirectHomescreen);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [Text("Splash View")],
      ),
    );
  }
}
