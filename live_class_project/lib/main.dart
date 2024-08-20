import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) => MyApp(), // Wrap your app
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    print(MediaQuery.sizeOf(context).width);
    print(MediaQuery.of(context).size.width);

    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        backgroundColor: Colors.blue,
      ),
      // body: SizedBox(
      //   width: MediaQuery.of(context).size.width,
      //   child: Column(
      //     children: [
      //       // Flexible(
      //       //   flex: 2,
      //       //   child: Container(
      //       //     color: Colors.blue,
      //       //     width: 100,
      //       //   ),
      //       // ),
      //       // Flexible(
      //       //   flex: 5,
      //       //   child: Container(
      //       //     color: Colors.green,
      //       //     width: 200,
      //       //   ),
      //       // ),
      //       // Flexible(
      //       //   flex: 8,
      //       //   child: Container(
      //       //     color: Colors.yellow,
      //       //     width: 200,
      //       //   ),
      //       // ),
      //       // Expanded(
      //       //   child: Container(
      //       //     color: Colors.pink,
      //       //     width: 200,
      //       //     height: 100,
      //       //   ),
      //       // ),
      //       // Expanded(
      //       //   child: Container(
      //       //     color: Colors.orange,
      //       //     width: 200,
      //       //   ),
      //       // ),
      //       // AspectRatio(
      //       //   aspectRatio: 16 / 9,
      //       //   child: Container(
      //       //     color: Colors.pink,
      //       //   ),
      //       // ),
      //       LayoutBuilder(
      //         builder: (context, constraints) {
      //           return Text(constraints.maxWidth.toString());
      //         },
      //       )
      //     ],
      //   ),
      // ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return Text(constraints.maxWidth.toString());
        },
      ),
    );
  }
}
