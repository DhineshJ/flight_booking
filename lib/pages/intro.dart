import 'package:flutter/material.dart';

import '../constants.dart';
import '../widgets/title.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({
    super.key,
  });

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            constraints: const BoxConstraints.expand(),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              image: const DecorationImage(
                  image: NetworkImage(
                      "https://images.unsplash.com/photo-1523906834658-6e24ef2386f9?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTV8fHRyYXZlbHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=1000&q=60"),
                  fit: BoxFit.cover),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MainTitle(
                    textInput: introTitle,
                    color: Colors.white,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  MainTitle(
                    textInput: introDescription,
                    descriptionText: true,
                    color: Colors.white,
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          elevation: 20,
                          primary: Colors.white60,
                          minimumSize: const Size(150, 60),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          )),
                      child: const Text('Get Tickets'))
                ],
              ),
            ),
          ),
          Align(
              alignment: Alignment.center,
              child: SizedBox(
                  height: 500,
                  child: Image.network(
                      'https://travelvise.in/images/2021/09/07/family-2.png'))),
        ],
      ),
    );
  }
}

