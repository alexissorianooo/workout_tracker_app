import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/workout_list_screen_cubit.dart';
import '../widget/workout_card_widget.dart';

class WorkoutListScreen extends StatelessWidget {
  const WorkoutListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<WorkoutListScreenCubit, WorkoutListScreenState>(
      listener: (context, state) {
        // Handle state changes
      },
      builder: (context, state) {
        return state.maybeWhen(
          loaded: (workouts) => ListView.builder(
            itemCount: workouts.length,
            itemBuilder: (context, index) {
              final workout = workouts[index];
              return WorkoutCardWidget(workout: workout, index: index);
            },
          ),
          empty: () => Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('No workouts available'),
                ElevatedButton(
                  onPressed: () => Navigator.of(context).pushNamed('/add'),
                  child: const Text('Edit'),
                ),
              ],
            ),
          ),
          loading: () => const Center(child: CircularProgressIndicator()),
          orElse: () => const SizedBox(),
        );
      },
    );
  }
}
