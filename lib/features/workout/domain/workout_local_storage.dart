import 'package:isar_community/isar.dart';
import 'package:workout_tracker/features/workout/domain/workout_model.dart';

part 'workout_local_storage.g.dart';

@collection
class WorkoutLocalStorage {
  Id id = Isar.autoIncrement;

  String? name;
  int? latestWeight;
  int? personalRecordWeight;
  int? repetitions;
  String? notes;
}

/// Extension methods for WorkoutLocalStorage conversion
extension WorkoutLocalStorageConverter on WorkoutLocalStorage {
  /// Convert WorkoutLocalStorage to WorkoutModel
  WorkoutModel toModel() {
    return WorkoutModel(
      name: name ?? '',
      latestWeight: latestWeight ?? 0,
      personalRecordWeight: personalRecordWeight ?? 0,
      repetitions: repetitions ?? 0,
      notes: notes,
    );
  }
}
