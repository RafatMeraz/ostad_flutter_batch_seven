import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:live_class_project/counter_controller.dart';

// Obs, Obx, GetxController, GetBuilder,

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

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
        child: GetBuilder<CounterController>(
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
