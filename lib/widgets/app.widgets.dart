import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class CustomBottomSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 250,
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(25, 15, 25, 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  const Expanded(child: SizedBox()),
                  const Text(
                    "Support Anti-Racism",
                    style: TextStyle(color: Colors.white),
                  ),
                  const Expanded(child: SizedBox()),
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        Icons.keyboard_arrow_down_rounded,
                        color: Colors.grey,
                      )),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 60),
                child: Text(
                  "I'm raising awareness, driving donations and sharing information in support of justice and equality",
                  textAlign: TextAlign.center,
                  style:
                      TextStyle(color: Colors.white, fontSize: 15, height: 1.5),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Expanded(child: SizedBox()),
              Container(
                height: 50,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                child: const Center(
                  child: Text(
                    "ACT NOW",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
