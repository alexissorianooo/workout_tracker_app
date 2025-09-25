import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/workout_model.dart';

part 'workout_list_screen_state.dart';
part 'workout_list_screen_cubit.freezed.dart';

class WorkoutListScreenCubit extends Cubit<WorkoutListScreenState> {
  WorkoutListScreenCubit() : super(const WorkoutListScreenState.loading());

  late List<WorkoutModel> workouts = [];

  Future<void> initialize() async {
    // Simulate loading data
    await Future.delayed(const Duration(seconds: 2));
    workouts = [
      WorkoutModel(
        name: 'Bench press',
        personalRecordWeight: 32,
        latestWeight: 30,
        repetitions: 12,
        notes: 'Felt great!',
      ),
    ];
    if (workouts.isEmpty) {
      emit(const WorkoutListScreenState.empty());
      return;
    }

    emit(WorkoutListScreenState.loaded(workouts));
  }

  void editNotes(int index) {
    // workouts[index] = workouts[index].copyWith(
    //   notes: 'Updated notes at ${DateTime.now()}',
    // );
    // emit(WorkoutListScreenState.loaded(workouts));
  }

  void addWorkout(WorkoutModel workout) {}
}
