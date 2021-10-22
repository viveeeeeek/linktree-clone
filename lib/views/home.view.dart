import 'package:flutter/material.dart';
import 'package:linktree_clone/entities/user_data.entity.dart';
import 'package:linktree_clone/services/fetch_user_data.service.dart';

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
    return Scaffold(
        body: Column(children: [Text("hi bsdk")],)
        
        
        // ListView.builder(
        //     itemCount: _userdata == null ? 0 : _userdata!.length,
        //     itemBuilder: (BuildContext context, int index) {
        //       UserData userData = _userdata![index];
        //       return Card(
        //         child: Text(userData.title),
        //       );
        //     })
            );
  }
}
