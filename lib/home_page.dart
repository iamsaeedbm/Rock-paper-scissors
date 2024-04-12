import 'dart:math';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  dynamic scisserHand = FaIcon(FontAwesomeIcons.handPeace, size: 50);
  dynamic paperHand = FaIcon(FontAwesomeIcons.hand, size: 50);
  dynamic rockHand = FaIcon(FontAwesomeIcons.handBackFist, size: 50);
  int handTop = 1;
  int hantBot = 1;
  String paperhand = 'hand';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Rock Paper Scissor',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(20),
              child: Image(image: AssetImage('images/$handTop.png')),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  handTop = Random().nextInt(3) + 1;
                  hantBot = Random().nextInt(3) + 1;
                });
              },
              child: Text('Start Game'),
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: Image(image: AssetImage('images/$hantBot.png')),
            ),
          ],
        ),
      ),
    );
  }
}
