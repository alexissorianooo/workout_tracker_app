import 'package:flutter/material.dart';

class WorkoutAddScreen extends StatelessWidget {
  const WorkoutAddScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Add Workout')),
      body: const Center(child: Text('Workout Add Screen')),
    );
  }
}
