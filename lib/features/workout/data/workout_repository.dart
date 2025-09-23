import 'package:workout_tracker/features/workout/data/isar_service.dart';
import 'package:workout_tracker/features/workout/domain/workout_local_storage.dart';
import 'package:workout_tracker/features/workout/domain/workout_model.dart';

abstract class IWorkoutRepository {
  Future<void> addProgram(
    Map<String, dynamic> programData,
  ); // grouping of workouts
  Future<void> addWorkout(WorkoutModel workoutData); // exercise details
}

class WorkoutRepository implements IWorkoutRepository {
  final IsarService isar;
  WorkoutRepository(this.isar);
  @override
  Future<void> addProgram(Map<String, dynamic> programData) async {}
  @override
  Future<void> addWorkout(WorkoutModel workoutData) async {
    final db = await isar.db;

    await db.writeTxnSync(() async {
      await db.workoutLocalStorages.put(workoutData.toLocalStorage());
    });
  }
}
