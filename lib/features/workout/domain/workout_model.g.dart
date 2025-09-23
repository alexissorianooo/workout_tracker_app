// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'workout_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WorkoutModelImpl _$$WorkoutModelImplFromJson(Map<String, dynamic> json) =>
    _$WorkoutModelImpl(
      name: json['name'] as String,
      latestWeight: (json['latestWeight'] as num).toInt(),
      personalRecordWeight: (json['personalRecordWeight'] as num).toInt(),
      repetitions: (json['repetitions'] as num).toInt(),
      notes: json['notes'] as String?,
    );

Map<String, dynamic> _$$WorkoutModelImplToJson(_$WorkoutModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'latestWeight': instance.latestWeight,
      'personalRecordWeight': instance.personalRecordWeight,
      'repetitions': instance.repetitions,
      'notes': instance.notes,
    };
