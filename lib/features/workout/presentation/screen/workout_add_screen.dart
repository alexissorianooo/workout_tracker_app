import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/assets/assets_enum.dart';

class WorkoutAddScreen extends StatelessWidget {
  const WorkoutAddScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Workout'),
        leading: IconButton(
          icon: SvgPicture.asset(AssetsEnum.backArrow),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: const Center(child: Text('Workout Add Screen')),
    );
  }
}
