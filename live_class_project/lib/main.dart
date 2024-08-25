import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  //
  // @override
  // State<StatefulWidget> createState() {
  //   return HomeScreenState();
  // }

  @override
  State<StatefulWidget> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int counter = 0;

  @override
  void initState() {
    super.initState();
    print('init state');
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print('didChangeDependencies');
  }

  @override
  void didUpdateWidget(covariant HomeScreen oldWidget) {
    super.didUpdateWidget(oldWidget);
    print('didUpdateWidget');
  }

  @override
  Widget build(BuildContext context) {
    print('build');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
        child: Text('counter $counter'),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FloatingActionButton(
            onPressed: () {
              counter--;
              setState(() {});
            },
            child: const Icon(Icons.remove),
          ),
          const SizedBox(width: 16),
          FloatingActionButton(
            onPressed: () {
              counter++;
              setState(() {});
            },
            child: const Icon(Icons.add),
          ),
        ],
      ),
    );
  }

  @override
  void deactivate() {
    print('deactive');
    super.deactivate();
  }

  @override
  void dispose() {
    print('dispose');
    super.dispose();
  }
}

/*
class Home extends StatelessWidget {
  Home({super.key});

  int counter = 0;

  // rebuild

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: Text('counter $counter'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          counter++;
          print(counter);
        },
        child: Icon(Icons.add),
      ),
    );
  }
}*/
