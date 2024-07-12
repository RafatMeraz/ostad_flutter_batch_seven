// Current SDK version: 3.22.1
import 'package:flutter/material.dart';

// Container, dialog, bottom-sheet

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

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<String> friendList = ['Fahad', 'Iram', 'Touhid', 'Sakib', 'Niloy'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Home'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 100,
              height: 100,
              // color: Colors.green,
              // padding: EdgeInsets.all(8),
              // padding: EdgeInsets.symmetric(
              //   vertical: 8,
              //   horizontal: 4
              // ),
              padding: EdgeInsets.only(bottom: 8),
              margin: EdgeInsets.all(16),
              alignment: Alignment.bottomRight,
              decoration: BoxDecoration(
                  color: Colors.green,
                  border: Border.all(color: Colors.red, width: 4),
                  // borderRadius: BorderRadius.circular(16)
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16),
                      bottomRight: Radius.circular(16)),
                  shape: BoxShape.rectangle,
                  image: DecorationImage(
                      image: AssetImage('assets/images/messi.jpg'),
                      fit: BoxFit.cover,
                      opacity: 0.4),
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                      color: Colors.red.withOpacity(0.5),
                      spreadRadius: 3,
                      blurRadius: 8,
                      offset: Offset(0, 3),
                    ),
                    BoxShadow(
                      color: Colors.green.withOpacity(0.2),
                      spreadRadius: 3,
                      blurRadius: 8,
                      offset: Offset(0, 6),
                    ),
                  ]),
              child: Text('Messi'),
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.green,
              padding: EdgeInsets.all(16),
              margin: EdgeInsets.all(8),
            ),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Text('sdfsdf'),
            ),
            ElevatedButton(
              onPressed: () {
                // showAboutDialog(
                //   context: context,
                //   applicationName: 'Sample',
                //   applicationVersion: '1.0.1',
                //   children: [
                //     Text('Sample text')
                //   ]
                // );
                showDialog(
                    context: context,
                    barrierDismissible: false,
                    barrierColor: Colors.black54,
                    builder: (ctx) {
                      return AlertDialog(
                        title: Text('Our custom dialog'),
                        content: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Sample text'),
                            Text('Sample text'),
                            Text('Sample text'),
                          ],
                        ),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text('Cancel'),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text('Okay'),
                          )
                        ],
                        shape: RoundedRectangleBorder(
                            // borderRadius: BorderRadius.circular(0)
                            borderRadius: BorderRadius.circular(8)),
                        backgroundColor: Colors.white,
                      );
                    });
              },
              child: Text('Dialog'),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                showModalBottomSheet(
                  backgroundColor: Colors.white,
                  context: context,
                  barrierColor: Colors.black54,
                  enableDrag: false,
                  isDismissible: false,
                  builder: (ctx) {
                    return SizedBox(
                      height: 600,
                      width: double.infinity,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Text('Title'),
                          ),
                          Divider(),
                          Column(
                            children: [

                            ],
                          )
                        ],
                      ),
                    );
                  },
                );
              },
              child: Text('Show Bottom sheet'),
            )
          ],
        ),
      ),
    );
  }
}
