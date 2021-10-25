import 'package:flutter/material.dart';
import 'package:linktree_clone/models/linktree_data.model.dart';
import 'package:linktree_clone/services/fetch_user_data.service.dart';
import 'package:linktree_clone/utils/constants.utils.dart';
import 'package:linktree_clone/widgets/app.widgets.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeView extends StatefulWidget {
  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  List<LinktreeData>? _linktreedata;
  @override
  void initState() {
    try {
      Services.getLinkTreeData().then((linktreedata) {
        setState(() {
          _linktreedata = linktreedata;
          print("fetching user data properly");
        });
      });
    } catch (e) {
      print(e);
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Padding(
            padding: screenSize.width > 1000 //! if is Desktop
                ? const EdgeInsets.symmetric(horizontal: 360)
                : screenSize.width > 768 //! if is Tab
                    ? const EdgeInsets.symmetric(horizontal: 150)
                    : const EdgeInsets.symmetric(horizontal: 25), //! is mobile
            child: Column(
              children: [
                const SizedBox(
                  height: 35,
                ),
                const CircleAvatar(
                  radius: 50,
                  backgroundImage: NetworkImage(
                      PROFILE_AVTAR),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "@viveeeeeek",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                ),
                const SizedBox(
                  height: 30,
                ),
                Expanded(
                  child: SizedBox(
                    child: ListView.builder(
                        itemCount: _linktreedata == null ? 0 : _linktreedata!.length,
                        itemBuilder: (BuildContext context, int index) {
                          LinktreeData userData = _linktreedata![index];
                          return Padding(
                              padding: const EdgeInsets.fromLTRB(0, 0, 0, 15),
                              child: Container(
                                height: 50,
                                width: screenSize.width / 3,
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
                                      overlayColor: MaterialStateProperty.all(
                                          Colors.white),
                                      foregroundColor: MaterialStateProperty
                                          .resolveWith<Color?>((states) {
                                        if (states
                                            .contains(MaterialState.hovered)) {
                                          return const Color(0xFF39E09B);
                                        }
                                        return Colors.white;
                                      }),
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                        const Color(0xFF39E09B),
                                      ),
                                    ),
                                    child: Text(
                                      userData.title,
                                      style: const TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w700),
                                    )),
                              ));
                        }),
                  ),
                ),
                const SizedBox(
                  height: 75,
                )
              ],
            ),
          ),
          Positioned(bottom: 0, child: CustomBottomSheet()),
        ],
      ),
    );
  }
}
