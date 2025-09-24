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
    return Column(
      children: [
        ListTile(
          title: Text(workout.name),
          subtitle: Column(children: [
              
            ],
          ),
        ),
        // if (workout.notes != null)
        //   Padding(
        //     padding: const EdgeInsets.symmetric(horizontal: 16.0),
        //     child: Align(
        //       alignment: Alignment.centerLeft,
        //       child: Column(
        //         crossAxisAlignment: CrossAxisAlignment.start,
        //         children: [
        //           const Text('Notes:'),
        //           const SizedBox(height: 4.0),
        //           Container(
        //             padding: const EdgeInsets.all(12),
        //             decoration: BoxDecoration(
        //               border: Border.all(color: Colors.grey),
        //               borderRadius: BorderRadius.circular(4.0),
        //             ),
        //             child: TextField(
        //               onChanged: (value) {
        //                 context.read<WorkoutListScreenCubit>().editNotes(index);
        //               },
        //               decoration: InputDecoration(
        //                 border: InputBorder.none,
        //                 hintText: workout.notes,
        //               ),
        //               maxLines: 3,
        //             ),
        //           ),
        //         ],
        //       ),
        //     ),
        //   ),
        const Divider(),
      ],
    );
  }
}

class CardItem extends StatelessWidget {
  final String itemLabel;
  final int itemValue;
  const CardItem({super.key, required this.itemValue, required this.itemLabel});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 16.0),
      child: SizedBox(
        height: 30,
        child: Row(
          children: [
            Text('$itemLabel: '),
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  labelText: itemValue.toString(),
                ),
                maxLines: 1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
