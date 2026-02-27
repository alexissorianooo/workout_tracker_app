import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:workout_tracker/features/workout/presentation/cubit/workout_list_screen_cubit.dart';
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
      child: Column(
        children: [CardItem(workoutModel: workout, index: index)],
      ),
    );
  }
}

class CardItem extends StatefulWidget {
  final WorkoutModel workoutModel;
  final int index;
  const CardItem({super.key, required this.workoutModel, required this.index});

  @override
  State<CardItem> createState() => _CardItemState();
}

class _CardItemState extends State<CardItem> {
  late TextEditingController nameController;
  late TextEditingController notesController;

  @override
  void initState() {
    nameController = TextEditingController(text: widget.workoutModel.name);
    notesController = TextEditingController(text: widget.workoutModel.notes);
    super.initState();
  }

  @override
  void dispose() {
    nameController.dispose();
    notesController.dispose();
    super.dispose();
  }

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
              controller: nameController,
              onChanged: (value) => context.read<WorkoutListScreenCubit>().updateName(widget.index, value),
              decoration: InputDecoration(
                border: InputBorder.none,
                isDense: true,
                hintText: 'Workout #${widget.index + 1}',
              ),
              maxLines: null,
            ),
            Divider(color: Colors.grey[300], thickness: 1),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                WorkoutCardDetailsWidget(
                  label: 'PR',
                  value: widget.workoutModel.personalRecordWeight,
                  callback: (value) => context.read<WorkoutListScreenCubit>().updatePersonalRecord(
                        name: widget.workoutModel.name,
                        index: widget.index,
                        value: value,
                      ),
                ),
                WorkoutCardDetailsWidget(
                  label: 'Recent weight',
                  value: widget.workoutModel.latestWeight,
                  callback: (value) => context.read<WorkoutListScreenCubit>().updateLatestWeight(
                        name: widget.workoutModel.name,
                        index: widget.index,
                        value: value,
                      ),
                ),
                WorkoutCardDetailsWidget(
                  label: 'Repetitions',
                  value: widget.workoutModel.repetitions,
                  callback: (value) => context.read<WorkoutListScreenCubit>().updateReps(
                        name: widget.workoutModel.name,
                        index: widget.index,
                        value: value,
                      ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Text('Notes:', style: TextStyle(fontWeight: FontWeight.bold)),
            TextField(
              controller: notesController,
              onChanged: (value) => context.read<WorkoutListScreenCubit>().updateNote(widget.index, value),
              decoration: InputDecoration(
                border: InputBorder.none,
                isDense: true,
                hintText: 'Add notes here...',
              ),
              maxLines: null,
            ),
          ],
        ),
      ),
    );
  }
}
