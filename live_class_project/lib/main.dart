import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:live_class_project/counter_controller.dart';
import 'package:live_class_project/home_screen.dart';

void main() {
  runApp(const CounterApp());
}

class CounterApp extends StatelessWidget {
  const CounterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: const HomeScreen(),
      initialBinding: ControllerBinder(),
    );
  }
}

class ControllerBinder extends Bindings {
  @override
  void dependencies() {
    Get.put(CounterController());
  }
}
