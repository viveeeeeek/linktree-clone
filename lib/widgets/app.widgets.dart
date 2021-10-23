import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class CustomBottomSheet extends StatefulWidget {
  @override
  State<CustomBottomSheet> createState() => _CustomBottomSheetState();
}

class _CustomBottomSheetState extends State<CustomBottomSheet> {
  static double maxSize = 225;
  static bool isExpanded = true;

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return AnimatedContainer(
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeIn,
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
                      "Support Anti-Racism",
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
                              maxSize = 225;
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
                padding: const EdgeInsets.fromLTRB(15, 15, 15, 15),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Expanded(child: SizedBox()),
                          const Text(
                            "Support Anti-Racism",
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
                                    maxSize = 225;
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
                        height: 5,
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 65),
                        child: Text(
                          "I'm raising awareness, driving donations and sharing information in support of justice and equality",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 16, color: Colors.white, height: 1.5),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        height: 50,
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(15))),
                        child: const Center(
                          child: Text(
                            "ACT NOW",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ));
  }
}
