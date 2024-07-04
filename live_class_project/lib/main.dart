// Current SDK version: 3.22.1
import 'package:flutter/material.dart';

// image, materialApp, scaffold, Icons,
// buttons(ElevatedButton, IconButton, TextButton, GestureDetector, InkWell)

void main() {
  runApp(IntroApp());
}

class IntroApp extends StatelessWidget {
  const IntroApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      home: Home(),
      title: 'Intro app',
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        title: Text('Home'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        // child: Icon(
        //   Icons.tablet_android,
        //   size: 50,
        //   color: Colors.white,
        // ),
        // child: Image.network('https://upload.wikimedia.org/wikipedia/commons/thumb/f/f9/Flag_of_Bangladesh.svg/2000px-Flag_of_Bangladesh.svg.png'),
        // child: Image.asset(
        //   'assets/images/messi.jpg',
        //   width: 250,
        //   height: 200,
        //   fit: BoxFit.cover,
        // ),
        // child: ElevatedButton(
        //   onPressed: () {
        //     print('Button pressed');
        //   },
        //   child: Text('Notification'),
        // ),
        // child: IconButton(
        //   onPressed: () {
        //     print('Add');
        //   },
        //   icon: Icon(Icons.add),
        // ),
        // child: TextButton(
        //   onPressed: () {
        //     print('show button pressed');
        //   },
        //   child: Text('Text button'),
        // ),
        // child: GestureDetector(
        //   onTap: () {
        //     print('Single tap');
        //   },
        //   onDoubleTap: () {
        //     print('Double tap');
        //   },
        //   child: Text('normal text'),
        // ),
        child: InkWell(
          onTap: () {
            print('Single tap');
          },
          onDoubleTap: () {
            print('Double tap');
          },
          child: Text('normal text'),
        ),
      ),
    );
  }
}
