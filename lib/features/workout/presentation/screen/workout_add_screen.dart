import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:workout_tracker/features/workout/presentation/cubit/workout_list_screen_cubit.dart';
import 'package:workout_tracker/features/workout/presentation/widget/workout_card_widget.dart';

import '../../../../core/assets/assets_enum.dart';

class WorkoutAddScreen extends StatefulWidget {
  const WorkoutAddScreen({super.key});

  @override
  State<WorkoutAddScreen> createState() => _WorkoutAddScreenState();
}

class _WorkoutAddScreenState extends State<WorkoutAddScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WorkoutListScreenCubit, WorkoutListScreenState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Add Workout'),
            leading: IconButton(
              icon: SvgPicture.asset(AssetsEnum.backArrow),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            actions: [
              IconButton(
                icon: SvgPicture.asset(AssetsEnum.backArrow),
                onPressed: () {
                  context.read<WorkoutListScreenCubit>().createNewWorkout();
                },
              ),
              TextButton(
                onPressed: () {
                  context.read<WorkoutListScreenCubit>().deleteAllWorkouts();
                },
                child: const Text('reset'),
              ),
            ],
          ),
          body: state.maybeWhen(
            orElse: () => const SizedBox(),
            loaded: (workouts) {
              return ListView.builder(
                itemCount: workouts.length + 1,
                itemBuilder: (context, index) {
                  // Show workout cards for all items except the last
                  if (index < workouts.length) {
                    final workout = workouts[index];
                    return WorkoutCardWidget(workout: workout, index: index);
                  }
                  // Show the "Add Workout" button as the last item
                  // else {
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16.0,
                      vertical: 8.0,
                    ),
                    child: ElevatedButton(
                      onPressed: () {
                        // Add your logic to create a new workout
                        context.read<WorkoutListScreenCubit>().createNewWorkout();
                      },
                      child: const Text('Add another workout'),
                    ),
                  );
                  // }
                },
              );
            },
          ),
        );
      },
    );
  }
}
