import 'package:flutter/material.dart';

import '../../domain/workout_model.dart';

class WorkoutCardWidget extends StatelessWidget {
  final WorkoutModel workout;
  final int index;
  const WorkoutCardWidget({
    super.key,
    required this.workout,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(children: [CardItem(workoutModel: workout)]),
    );
  }
}

class CardItem extends StatelessWidget {
  final WorkoutModel workoutModel;
  const CardItem({super.key, required this.workoutModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              workoutModel.name,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Divider(color: Colors.grey[300], thickness: 1),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                workoutDetails(
                  'PR',
                  workoutModel.personalRecordWeight.toString(),
                ),
                workoutDetails(
                  'Recent weight',
                  workoutModel.latestWeight.toString(),
                ),
                workoutDetails(
                  'Repetitions',
                  workoutModel.repetitions.toString(),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Text('Notes:', style: TextStyle(fontWeight: FontWeight.bold)),
            TextField(
              controller: TextEditingController(text: workoutModel.notes),
              decoration: const InputDecoration(border: OutlineInputBorder()),
              maxLines: null,
            ),
          ],
        ),
      ),
    );
  }
}

// TODO: make this stateless widget for performance
Widget workoutDetails(String label, String value) {
  return Expanded(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(label),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(4.0),
          ),
          child: TextField(
            controller: TextEditingController(text: value),
            maxLines: 1,
            textAlign: TextAlign.center,
            decoration: const InputDecoration(
              border: InputBorder.none,
              isDense: true,
            ),
          ),
        ),
      ],
    ),
  );
}
