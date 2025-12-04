// ignore_for_file: avoid_print

import 'package:injectable/injectable.dart';
import 'package:isar_community/isar.dart';
import 'package:workout_tracker/features/workout/data/isar_service.dart';
import 'package:workout_tracker/features/workout/domain/workout_local_storage.dart';
import 'package:workout_tracker/features/workout/domain/workout_model.dart';
import 'package:workout_tracker/features/workout/domain/workout_repository.dart';

@LazySingleton(as: IWorkoutRepository)
class WorkoutRepository implements IWorkoutRepository {
  final IsarService isar;
  WorkoutRepository(this.isar);

  Future<Isar> fetchIsarDb() async {
    return await isar.db;
  }

  @override
  Future<void> addProgram(Map<String, dynamic> programData) async {
    // Adds new set of workout
    // WorkoutPlan List<WorkoutModel>
    // Needs new model here; List<WorkoutPlan>
  }

  @override
  Future<List<WorkoutModel?>> fetchWorkouts() async {
    final db = await fetchIsarDb();
    final workouts = await db.workoutLocalStorages.where().findAll();
    final convertedToModel = workouts.map((e) => e.toModel()).toList();
    print(convertedToModel);
    return convertedToModel;
  }

  @override
  Future<void> addWorkout(WorkoutModel workoutData) async {
    print('addWorkout called');
    final db = await fetchIsarDb();

    await db.writeTxn(() async {
      await db.workoutLocalStorages.put(workoutData.toLocalStorage());
    });
  }

  @override
  Future<void> updateWorkout(WorkoutModel workoutData) async {
    print('updateWorkout called');
    final db = await fetchIsarDb();
    print('workoutData.id ${workoutData.id}');

    final workout = await db.workoutLocalStorages.get(workoutData.id ?? -1);
    print('workout $workout');

    if (workout == null) {
      // await addWorkout(workoutData);
      return;
    }

    workout.name = workoutData.name;
    workout.latestWeight = workoutData.latestWeight;
    workout.personalRecordWeight = workoutData.personalRecordWeight;
    workout.repetitions = workoutData.repetitions;
    workout.notes = workoutData.notes;

    await db.writeTxn(() async {
      await db.workoutLocalStorages.put(workout);
    });
  }

  @override
  Future<void> deleteAllWorkouts() async {
    print('delete all workouts');
    final db = await fetchIsarDb();
    await db.writeTxn(() async => db.workoutLocalStorages.clear());
  }
}
