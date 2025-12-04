import 'package:workout_tracker/features/workout/domain/workout_model.dart';

abstract class IWorkoutRepository {
  Future<void> addProgram(
    Map<String, dynamic> programData,
  ); // grouping of workouts
  Future<List<WorkoutModel?>> fetchWorkouts();
  Future<void> addWorkout(WorkoutModel workoutData);
  Future<void> updateWorkout(WorkoutModel workoutData);
  Future<void> deleteAllWorkouts();
}
