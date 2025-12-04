import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:workout_tracker/features/workout/domain/workout_local_storage.dart';

part 'workout_model.freezed.dart';
part 'workout_model.g.dart';

@freezed
class WorkoutModel with _$WorkoutModel {
  const factory WorkoutModel({
    int? id,
    required String name,
    required double latestWeight,
    required double personalRecordWeight,
    required int repetitions,
    String? notes,
  }) = _WorkoutModel;

  factory WorkoutModel.fromJson(Map<String, dynamic> json) => _$WorkoutModelFromJson(json);

  factory WorkoutModel.mock({
    String? name,
    double? latestWeight,
    double? personalRecordWeight,
    int? repetitions,
    String? notes,
  }) =>
      WorkoutModel(
        name: name ?? '',
        latestWeight: latestWeight ?? 0,
        personalRecordWeight: personalRecordWeight ?? 0,
        repetitions: repetitions ?? 0,
        notes: notes,
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
