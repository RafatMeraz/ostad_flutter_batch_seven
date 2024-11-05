import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:live_class_project/counter_controller.dart';
import 'package:live_class_project/home_screen.dart';
import 'package:live_class_project/profile_screen.dart';
import 'package:live_class_project/settings_screen.dart';

void main() {
  runApp(const CounterApp());
}

class CounterApp extends StatelessWidget {
  const CounterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: ControllerBinder(),
      initialRoute: '/',
      routes: {
        HomeScreen.name: (context) => const HomeScreen(),
        ProfileScreen.name: (context) => const ProfileScreen(),
        SettingsScreen.name: (context) => const SettingsScreen(),
      },
    );
  }
}

class ControllerBinder extends Bindings {
  @override
  void dependencies() {
    Get.put(CounterController());
  }
}
