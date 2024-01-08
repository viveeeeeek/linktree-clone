import 'package:flutter/material.dart';
import 'package:linktree_clone/utils/constants.utils.dart';
import 'package:url_launcher/url_launcher.dart';

// ignore: use_key_in_widget_constructors
class CustomBottomSheet extends StatefulWidget {
  @override
  State<CustomBottomSheet> createState() => _CustomBottomSheetState();
}

class _CustomBottomSheetState extends State<CustomBottomSheet> {
  static double maxSize = 200;
  static bool isExpanded = true;

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Container(
        // duration: const Duration(milliseconds: 500),
        // curve: Curves.easeIn,
        height: maxSize,
        width: screenSize.width,
        color: Colors.black,
        child: isExpanded == false
            //! When bottomsheet is minimized
            ? Padding(
                padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Expanded(child: SizedBox()),
                    const Text(
                      "Linktree clone",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                    const Expanded(child: SizedBox()),
                    IconButton(
                        onPressed: () {
                          setState(() {
                            if (isExpanded == true) {
                              maxSize = 60;
                              isExpanded = false;
                            } else {
                              maxSize = 200;
                              isExpanded = true;
                            }
                          });
                        },
                        icon: Icon(
                          isExpanded == true
                              ? Icons.keyboard_arrow_down_rounded
                              : Icons.keyboard_arrow_up_rounded,
                          color: Colors.grey,
                          size: 30,
                        )),
                  ],
                ),
              )
            //! When bottomsheet is expanded
            : Padding(
                padding: const EdgeInsets.fromLTRB(15, 15, 15, 5),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Expanded(child: SizedBox()),
                          const Text(
                            "Linktree clone",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w700),
                          ),
                          const Expanded(child: SizedBox()),
                          IconButton(
                              color: Colors.white,
                              hoverColor: Colors.blue,
                              onPressed: () {
                                setState(() {
                                  if (isExpanded == true) {
                                    maxSize = 60;
                                    isExpanded = false;
                                  } else {
                                    maxSize = 200;
                                    isExpanded = true;
                                  }
                                });
                              },
                              icon: Icon(
                                isExpanded == true
                                    ? Icons.keyboard_arrow_down_rounded
                                    : Icons.keyboard_arrow_up_rounded,
                                color: Colors.grey,
                                size: 30,
                              )),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        width: screenSize.width > 1000
                            ? screenSize.width / 2.3
                            : screenSize.width > 768
                                ? screenSize.width / 1.2
                                : screenSize.width,
                        child: const Text(
                          "Personal linktree clone using flutter.",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 16, color: Colors.white, height: 1.5),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Container(
                        height: 50,
                        width: screenSize.width > 768 //! is if Tab / Desktop
                            ? screenSize.width / 2.3
                            : screenSize.width / 1.5, //! is Mobile
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(15))),
                        child: TextButton(
                          onPressed: () {
                            launchUrl(Uri.parse(repoSourceCodeUrl));
                          },
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.code,
                                color: Colors.black,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "Source code",
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ));
  }
}
