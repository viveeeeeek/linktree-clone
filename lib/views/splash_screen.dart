import 'dart:async';

import 'package:flutter/material.dart';
import 'package:linktree_clone/views/home_screen.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  _redirectHomescreen() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const HomeView()));
  }

  @override
  void initState() {
    Timer(const Duration(milliseconds: 1000), _redirectHomescreen);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage(
                    "https://raw.githubusercontent.com/viveeeeeek/linktree-clone/master/assets/logo.png")),
            SizedBox(
              height: 25,
            ),
            Text(
              "Linktree Clone",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
            )
          ],
        ),
      ),
    );
  }
}
