import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:live_class_project/counter_controller.dart';
import 'package:live_class_project/settings_screen.dart';

// Obs, Obx, GetxController, GetBuilder,

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  static const String name = '/';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetBuilder<CounterController>(
              builder: (counterController) {
                return Text(
                  '${counterController.counter}',
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                  ),
                );
              },
            ),
            ElevatedButton(
              onPressed: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => const SettingsScreen(),
                //   ),
                // );
                // Navigator.pushNamed(context, '/settings');
                // Navigator.pushReplacementNamed(context, '/settings');
                // Navigator.pushNamedAndRemoveUntil(
                //   context,
                //   '/settings',
                //   (predicate) => false,
                // );
                // Navigator.pushNamed(context, SettingsScreen.name);
                // Get.to(() => const SettingsScreen());
                Get.toNamed(SettingsScreen.name);
                // Get.offNamed(page) // Replacement
              },
              child: const Text('Settings'),
            ),
            ElevatedButton(
              onPressed: () {
                Get.showSnackbar(
                  const GetSnackBar(
                    title: 'Title',
                    message: 'This is message',
                    duration: Duration(seconds: 3),
                    snackPosition: SnackPosition.TOP,
                  ),
                );
              },
              child: const Text('Show Snack Bar'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.find<CounterController>().increment();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
