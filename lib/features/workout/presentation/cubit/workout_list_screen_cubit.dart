import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/workout_repository.dart';
import '../../domain/workout_model.dart';

part 'workout_list_screen_state.dart';
part 'workout_list_screen_cubit.freezed.dart';

@LazySingleton()
class WorkoutListScreenCubit extends Cubit<WorkoutListScreenState> {
  final IWorkoutRepository repository;
  WorkoutListScreenCubit(this.repository) : super(const WorkoutListScreenState.loading());

  List<WorkoutModel> workouts = [];

  void reloadCubit() {
    emit(WorkoutListScreenState.loading());
    emit(WorkoutListScreenState.loaded(workouts));
  }

  Future<void> createNewWorkout() async {
    final newWorkout = WorkoutModel.mock();
    workouts.add(newWorkout);
    await repository.addWorkout(newWorkout);
    reloadCubit();
  }

  Future<void> deleteAllWorkouts() async {
    await repository.deleteAllWorkouts();
    workouts.clear();
    emit(const WorkoutListScreenState.empty());
  }

  Future<void> initialize() async {
    repository.deleteAllWorkouts();
    final fetchedWorkouts = await repository.fetchWorkouts();
    if (fetchedWorkouts.isEmpty) {
      emit(const WorkoutListScreenState.empty());
      return;
    }
    workouts = fetchedWorkouts as List<WorkoutModel>; // Cast as not nullable since it passed the [isEmpty]

    print(workouts);
    emit(WorkoutListScreenState.loaded(workouts));
  }

  // Currently not used; kept for reference
  Future<void> updateName(int index, String value) async {
    if (index >= 0 && index < workouts.length) {
      workouts[index] = workouts[index].copyWith(id: index + 1, name: value);

      await repository.updateWorkout(workouts[index]);
      reloadCubit();
    }
  }

  Future<void> updateNote(int index, String value) async {
    if (index >= 0 && index < workouts.length) {
      workouts[index] = workouts[index].copyWith(id: index + 1, notes: value);

      await repository.updateWorkout(workouts[index]);
      reloadCubit();
    }
  }

  Future<void> updatePersonalRecord({
    String? name,
    int index = 0,
    double value = 0,
  }) async {
    if (name == null) {
      return;
    }
    workouts.where((data) => data.name == name).forEach((specificWorkout) {
      workouts[index] = specificWorkout.copyWith(personalRecordWeight: value);
    });

    await repository.updateWorkout(workouts[index]);
    reloadCubit();
  }

  Future<void> updateLatestWeight({
    String? name,
    int index = 0,
    double value = 0,
  }) async {
    if (name == null) {
      return;
    }
    workouts.where((data) => data.name == name).forEach((specificWorkout) {
      workouts[index] = specificWorkout.copyWith(latestWeight: value);
    });

    await repository.updateWorkout(workouts[index]);
    reloadCubit();
  }

  Future<void> updateReps({String? name, int index = 0, int value = 0}) async {
    if (name == null) {
      return;
    }
    workouts.where((data) => data.name == name).forEach((specificWorkout) {
      workouts[index] = specificWorkout.copyWith(repetitions: value);
    });

    await repository.updateWorkout(workouts[index]);
    reloadCubit();
  }
}
