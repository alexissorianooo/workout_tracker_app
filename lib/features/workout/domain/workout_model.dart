import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:workout_tracker/features/workout/domain/workout_local_storage.dart';

part 'workout_model.freezed.dart';
part 'workout_model.g.dart';

@freezed
class WorkoutModel with _$WorkoutModel {
  const factory WorkoutModel({
    required String name,
    required int latestWeight,
    required int personalRecordWeight,
    required int repetitions,
    String? notes,
  }) = _WorkoutModel;

  factory WorkoutModel.fromJson(Map<String, dynamic> json) =>
      _$WorkoutModelFromJson(json);

  factory WorkoutModel.mock() => const WorkoutModel(
    name: '',
    latestWeight: 0,
    personalRecordWeight: 0,
    repetitions: 0,
    notes: null,
  );
}

/// Extension methods for WorkoutModel conversion
extension WorkoutModelConverter on WorkoutModel {
  /// Convert WorkoutModel to WorkoutLocalStorage
  WorkoutLocalStorage toLocalStorage() {
    final storage = WorkoutLocalStorage()
      ..name = name
      ..latestWeight = latestWeight
      ..personalRecordWeight = personalRecordWeight
      ..repetitions = repetitions
      ..notes = notes;

    return storage;
  }
}
