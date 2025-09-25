import 'package:flutter/material.dart';
import 'package:workout_tracker/features/workout/presentation/widget/workout_card_details_widget.dart';

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
      padding: const EdgeInsets.symmetric(vertical: 6.0, horizontal: 24.0),
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
            TextField(
              controller: TextEditingController(text: workoutModel.name),
              maxLines: 1,
              textAlign: TextAlign.start,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              decoration: const InputDecoration(
                border: InputBorder.none,
                isDense: true,
              ),
            ),
            Divider(color: Colors.grey[300], thickness: 1),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                WorkoutCardDetailsWidget(
                  label: 'PR',
                  value: workoutModel.personalRecordWeight.toString(),
                ),
                WorkoutCardDetailsWidget(
                  label: 'Recent weight',
                  value: workoutModel.latestWeight.toString(),
                ),
                WorkoutCardDetailsWidget(
                  label: 'Repetitions',
                  value: workoutModel.repetitions.toString(),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Text('Notes:', style: TextStyle(fontWeight: FontWeight.bold)),
            TextField(
              controller: TextEditingController(text: workoutModel.notes),
              decoration: const InputDecoration(
                border: InputBorder.none,
                isDense: true,
              ),
              maxLines: null,
            ),
          ],
        ),
      ),
    );
  }
}
