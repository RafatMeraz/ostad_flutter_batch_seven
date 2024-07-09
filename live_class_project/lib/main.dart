// Current SDK version: 3.22.1
import 'package:flutter/material.dart';

// Column, Row, SingleChildScrollView

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

  // single child, multiple child(children)

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        title: Text('Home'),
        backgroundColor: Colors.blue,
      ),
     /* body: Column(
        // Vertically arrange
        // mainAxisAlignment: ,
        // crossAxisAlignment: ,
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text('Hello world'),
          Text('sdfdf'),
          Text('sdf'),
          ElevatedButton(
            onPressed: () {},
            child: Text('Click here'),
          ),
          IconButton(onPressed: () {}, icon: Icon(Icons.access_alarms))
        ],
      ),*/
 /*     body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          // Horizontally
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Text('Hello world\nfrom ostad'),
            Text('Hello world'),
            Text('Hello world'),
            Text('Hello world'),
            Text('Hello world'),
            Text('Hello world'),
            Text('Hello world'),
            Text('Hello world'),
            Text('Hello world'),
            Text('Hello world'),
            Text('Hello world'),
            Text('Hello world'),
            Text('Hello world'),
            Text('Hello world'),
            Text('Hello world'),
            Text('Hello world'),
            Text('Hello world'),
            Text('Hello world'),
            Text('Hello world'),
            Text('Hello world'),
            Text('Hello world'),
          ],
        ),
      ),*/
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Column(
              children: [
                Text('Column 1'),
                Text('Column 1'),
                Text('Column 1'),
                Text('Column 1'),
                Text('Column 1'),
                Text('Column 1'),
                Text('Column 1'),
              ],
            ),
            Column(
              children: [
                Text('Column 2'),
                Text('Column 2'),
                Text('Column 2'),
                Text('Column 2'),
                Text('Column 2'),
                Text('Column 2'),
                Text('Column 2'),
                Text('Column 2'),
                Text('Column 2'),
                Text('Column 2'),
                Text('Column 2'),
                Text('Column 2'),
                Text('Column 2'),
                Row(
                  children: [
                    Text('Row 1 from col 2'),
                    Text('Row 1 from col 2'),
                    Text('Row 1 from col 2'),
                    Text('Row 1 from col 2'),
                    Text('Row 1 from col 2'),
                  ],
                )
              ],
            ),
            Column(
              children: [
                Text('Column 3'),
                Text('Column 3'),
                Text('Column 3'),
                Text('Column 3'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
