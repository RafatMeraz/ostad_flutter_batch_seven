import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('Profile'),
        leading: Icon(CupertinoIcons.back),
      ),
      // child: Column(
      //   children: [
      //     Text(
      //       'This is cupertino design system',
      //       style: TextStyle(color: Colors.green),
      //     ),
      //   ],
      // ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('sdfk'),
            SizedBox(height: 16),
            Icon(CupertinoIcons.airplane, size: 32,),
            SizedBox(height: 16),
            CupertinoButton.filled(child: Text('Click'), onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
