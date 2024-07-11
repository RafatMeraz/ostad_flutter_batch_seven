// Current SDK version: 3.22.1
import 'package:flutter/material.dart';

// ListView, Gridview, SizedBox, ListTile, Divider

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
      // body: ListView(
      //   children: [
      //     SizedBox(
      //       height: 100,
      //       width: 100,
      //       child: Center(
      //         child: Text('Box 1'),
      //       ),
      //     ),
      //     SizedBox(
      //       height: 100,
      //       width: 100,
      //       child: Center(
      //         child: Text('Box 2'),
      //       ),
      //     ),
      //     SizedBox(
      //       height: 100,
      //       width: 100,
      //       child: Center(
      //         child: Text('Box 3'),
      //       ),
      //     ),
      //     SizedBox(
      //       height: 100,
      //       width: 100,
      //       child: Center(
      //         child: Text('Box 1'),
      //       ),
      //     ),
      //     SizedBox(
      //       height: 100,
      //       width: 100,
      //       child: Center(
      //         child: Text('Box 2'),
      //       ),
      //     ),
      //     SizedBox(
      //       height: 100,
      //       width: 100,
      //       child: Center(
      //         child: Text('Box 3'),
      //       ),
      //     ),
      //     SizedBox(
      //       height: 100,
      //       width: 100,
      //       child: Center(
      //         child: Text('Box 1'),
      //       ),
      //     ),
      //     SizedBox(
      //       height: 100,
      //       width: 100,
      //       child: Center(
      //         child: Text('Box 2'),
      //       ),
      //     ),
      //     SizedBox(
      //       height: 100,
      //       width: 100,
      //       child: Center(
      //         child: Text('Box 3'),
      //       ),
      //     ),
      //     SizedBox(
      //       height: 100,
      //       width: 100,
      //       child: Center(
      //         child: Text('Box 1'),
      //       ),
      //     ),
      //     SizedBox(
      //       height: 100,
      //       width: 100,
      //       child: Center(
      //         child: Text('Box 2'),
      //       ),
      //     ),
      //     SizedBox(
      //       height: 100,
      //       width: 100,
      //       child: Center(
      //         child: Text('Box 3'),
      //       ),
      //     ),
      //     SizedBox(
      //       height: 100,
      //       width: 100,
      //       child: Center(
      //         child: Text('Box 1'),
      //       ),
      //     ),
      //     SizedBox(
      //       height: 100,
      //       width: 100,
      //       child: Center(
      //         child: Text('Box 2'),
      //       ),
      //     ),
      //     SizedBox(
      //       height: 100,
      //       width: 100,
      //       child: Center(
      //         child: Text('Box 3'),
      //       ),
      //     ),
      //     SizedBox(
      //       height: 100,
      //       width: 100,
      //       child: Center(
      //         child: Text('Box 1'),
      //       ),
      //     ),
      //     SizedBox(
      //       height: 100,
      //       width: 100,
      //       child: Center(
      //         child: Text('Box 2'),
      //       ),
      //     ),
      //     SizedBox(
      //       height: 100,
      //       width: 100,
      //       child: Center(
      //         child: Text('Box 3'),
      //       ),
      //     ),
      //   ],
      // ),
      // body: ListView.builder(
      //   itemCount: 1000, // 0-999
      //   itemBuilder: (context, index) {
      //     return SizedBox(
      //       width: 100,
      //       height: 100,
      //       child: Center(child: Text(index.toString())),
      //     );
      //   },
      // ),
      // body: ListView.builder(
      //   itemCount: friendList.length,
      //   // scrollDirection: Axis.horizontal,
      //   itemBuilder: (context, index) {
      //     return Text(friendList[index]);
      //   },
      // ),
      body: ListView.separated(
        itemCount: friendList.length,
        // scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return ListTile(
            tileColor: Colors.grey.shade50,
            title: Text(friendList[index]),
            subtitle: Text('School friend'),
            trailing: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.do_not_disturb_on_total_silence, color: Colors.green, size: 10,),
                Text('Active')
              ],
            ),
            leading: Text((index+1).toString()),
            onTap: () {
              print('$index item tapped');
            },
            titleTextStyle: TextStyle(
              fontSize: 18,
              color: Colors.red
            ),
          );
        },
        separatorBuilder: (context, index) {
          return Divider(
            color: Colors.grey.shade200,
            thickness: 2,
            endIndent: 16,
            indent: 4,
          );
          // return Text('This is $index separator');
        },
      ),
      // body: GridView.builder(
      //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      //     crossAxisCount: 3,
      //     crossAxisSpacing: 4,
      //     mainAxisSpacing: 10,
      //     childAspectRatio: 1
      //   ),
      //   itemCount: friendList.length,
      //   itemBuilder: (context, index) {
      //     return Column(
      //       children: [
      //         Text(index.toString()),
      //         Text(friendList[index]),
      //       ],
      //     );
      //   },
      // ),
      // body: GridView.builder(
      //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      //     crossAxisCount: 3,
      //     crossAxisSpacing: 4,
      //     mainAxisSpacing: 10,
      //     childAspectRatio: 1
      //   ),
      //   itemCount: friendList.length,
      //   itemBuilder: (context, index) {
      //     return Column(
      //       children: [
      //         Text(index.toString()),
      //         Text(friendList[index]),
      //       ],
      //     );
      //   },
      // ),
    );
  }
}
