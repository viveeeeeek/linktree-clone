import 'package:flutter/material.dart';
import 'package:linktree_clone/entities/user_data.entity.dart';
import 'package:linktree_clone/services/fetch_user_data.service.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeView extends StatefulWidget {
  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  List<UserData>? _userdata;
  @override
  void initState() {
    Services.getUserData().then((userdata) {
      setState(() {
        _userdata = userdata;
        print(_userdata);
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return Column(children: [
      const CircleAvatar(
        radius: 50,
        backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/64553247'),
      ),
      SizedBox(height: 15,),
      Expanded(
        child: SizedBox(
          child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
            child: ListView.builder(
                itemCount: _userdata == null ? 0 : _userdata!.length,
                itemBuilder: (BuildContext context, int index) {
                  UserData userData = _userdata![index];
                  return Card(
              
                    child: Column(
                      children: [
                        Text(userData.title),
                        IconButton(
                            onPressed: () {
                              launch(userData.link);
                            },
                            icon: const Icon(Icons.arrow_forward_ios_rounded))
                      ],
                    ),
                  );
                }),
          ),
        ),
      )
    ],);
  }
}
