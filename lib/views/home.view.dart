import 'package:flutter/material.dart';
import 'package:linktree_clone/entities/user_data.entity.dart';
import 'package:linktree_clone/services/fetch_user_data.service.dart';
import 'package:linktree_clone/widgets/app.widgets.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeView extends StatefulWidget {
  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  List<UserData>? _userdata;
  @override
  void initState() {
    try {
      Services.getUserData().then((userdata) {
        setState(() {
          _userdata = userdata;
          print("fetching user data properly");
        });
      });
    } catch (e) {
      print(e);
    }
    super.initState();
    Future.delayed(Duration.zero, () {
      showModalBottomSheet(
          context: context,
          barrierColor: Colors.transparent,
          builder: (builder) {
            return CustomBottomSheet();
          });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          const SizedBox(
            height: 35,
          ),
          const CircleAvatar(
            radius: 50,
            backgroundImage: NetworkImage(
                'https://avatars.githubusercontent.com/u/64553247'),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "@viveeeeeek",
            style: TextStyle(fontSize: 18),
          ),
          const SizedBox(
            height: 30,
          ),
          Expanded(
            child: SizedBox(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: ListView.builder(
                    itemCount: _userdata == null ? 0 : _userdata!.length,
                    itemBuilder: (BuildContext context, int index) {
                      UserData userData = _userdata![index];
                      return Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 0, 15),
                          child: Container(
                            height: 50,
                            decoration: BoxDecoration(
                              color: const Color(0xFF39E09B),
                              border: Border.all(
                                  color: const Color(0xFF39E09B),
                                  width: 1.5,
                                  style: BorderStyle.solid),
                            ),
                            child: TextButton(
                                onPressed: () {
                                  launch(userData.link);
                                },
                                style: ButtonStyle(
                                  overlayColor:
                                      MaterialStateProperty.all(Colors.white),
                                  foregroundColor:
                                      MaterialStateProperty.resolveWith<Color?>(
                                          (states) {
                                    if (states
                                        .contains(MaterialState.hovered)) {
                                      return const Color(0xFF39E09B);
                                    }
                                    return Colors.white;
                                  }),
                                  backgroundColor: MaterialStateProperty.all(
                                    const Color(0xFF39E09B),
                                  ),
                                ),
                                child: Text(
                                  userData.title,
                                )),
                          ));
                    }),
              ),
            ),
          )
        ],
      ),
    );
  }
}
