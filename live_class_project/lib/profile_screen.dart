import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:live_class_project/home_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  static const String name = '/profile';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                // Navigator.pop(context);
                Get.back(
                  result: 'dsfdf'
                );
              },
              child: const Text('Back'),
            ),
            TextButton(
              onPressed: () {
                // Navigator.pushAndRemoveUntil(
                //     context,
                //     MaterialPageRoute(builder: (context) => const HomeScreen()),
                //     (predicate) => false);
                Get.offAll(
                  () => const HomeScreen(),
                  transition: Transition.leftToRight,
                );
              },
              child: const Text('Home'),
            )
          ],
        ),
      ),
    );
  }
}
