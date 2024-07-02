// Current SDK version: 3.22.1


import 'package:flutter/material.dart';

void main() {
  runApp(IntroApp());
}

class IntroApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          title: Text('Home'),
        ),
        body: Center(
          child: Text(
            'Hello ostad. We have faced a huge problem last day jsfkds fkdjf kd',
            textAlign: TextAlign.start,
            maxLines: 2,
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.underline,
                letterSpacing: 1,
                wordSpacing: 1,
                overflow: TextOverflow.ellipsis
            ),
          ),
        ),
      ),
    );
  }
}
