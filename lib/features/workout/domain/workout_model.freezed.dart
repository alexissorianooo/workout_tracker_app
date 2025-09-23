// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'workout_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

WorkoutModel _$WorkoutModelFromJson(Map<String, dynamic> json) {
  return _WorkoutModel.fromJson(json);
}

/// @nodoc
mixin _$WorkoutModel {
  String get name => throw _privateConstructorUsedError;
  int get latestWeight => throw _privateConstructorUsedError;
  int get personalRecordWeight => throw _privateConstructorUsedError;
  int get repetitions => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;

  /// Serializes this WorkoutModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WorkoutModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WorkoutModelCopyWith<WorkoutModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkoutModelCopyWith<$Res> {
  factory $WorkoutModelCopyWith(
    WorkoutModel value,
    $Res Function(WorkoutModel) then,
  ) = _$WorkoutModelCopyWithImpl<$Res, WorkoutModel>;
  @useResult
  $Res call({
    String name,
    int latestWeight,
    int personalRecordWeight,
    int repetitions,
    String? notes,
  });
}

/// @nodoc
class _$WorkoutModelCopyWithImpl<$Res, $Val extends WorkoutModel>
    implements $WorkoutModelCopyWith<$Res> {
  _$WorkoutModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WorkoutModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? latestWeight = null,
    Object? personalRecordWeight = null,
    Object? repetitions = null,
    Object? notes = freezed,
  }) {
    return _then(
      _value.copyWith(
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            latestWeight: null == latestWeight
                ? _value.latestWeight
                : latestWeight // ignore: cast_nullable_to_non_nullable
                      as int,
            personalRecordWeight: null == personalRecordWeight
                ? _value.personalRecordWeight
                : personalRecordWeight // ignore: cast_nullable_to_non_nullable
                      as int,
            repetitions: null == repetitions
                ? _value.repetitions
                : repetitions // ignore: cast_nullable_to_non_nullable
                      as int,
            notes: freezed == notes
                ? _value.notes
                : notes // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$WorkoutModelImplCopyWith<$Res>
    implements $WorkoutModelCopyWith<$Res> {
  factory _$$WorkoutModelImplCopyWith(
    _$WorkoutModelImpl value,
    $Res Function(_$WorkoutModelImpl) then,
  ) = __$$WorkoutModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String name,
    int latestWeight,
    int personalRecordWeight,
    int repetitions,
    String? notes,
  });
}

/// @nodoc
class __$$WorkoutModelImplCopyWithImpl<$Res>
    extends _$WorkoutModelCopyWithImpl<$Res, _$WorkoutModelImpl>
    implements _$$WorkoutModelImplCopyWith<$Res> {
  __$$WorkoutModelImplCopyWithImpl(
    _$WorkoutModelImpl _value,
    $Res Function(_$WorkoutModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of WorkoutModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? latestWeight = null,
    Object? personalRecordWeight = null,
    Object? repetitions = null,
    Object? notes = freezed,
  }) {
    return _then(
      _$WorkoutModelImpl(
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        latestWeight: null == latestWeight
            ? _value.latestWeight
            : latestWeight // ignore: cast_nullable_to_non_nullable
                  as int,
        personalRecordWeight: null == personalRecordWeight
            ? _value.personalRecordWeight
            : personalRecordWeight // ignore: cast_nullable_to_non_nullable
                  as int,
        repetitions: null == repetitions
            ? _value.repetitions
            : repetitions // ignore: cast_nullable_to_non_nullable
                  as int,
        notes: freezed == notes
            ? _value.notes
            : notes // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$WorkoutModelImpl implements _WorkoutModel {
  const _$WorkoutModelImpl({
    required this.name,
    required this.latestWeight,
    required this.personalRecordWeight,
    required this.repetitions,
    this.notes,
  });

  factory _$WorkoutModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$WorkoutModelImplFromJson(json);

  @override
  final String name;
  @override
  final int latestWeight;
  @override
  final int personalRecordWeight;
  @override
  final int repetitions;
  @override
  final String? notes;

  @override
  String toString() {
    return 'WorkoutModel(name: $name, latestWeight: $latestWeight, personalRecordWeight: $personalRecordWeight, repetitions: $repetitions, notes: $notes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WorkoutModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.latestWeight, latestWeight) ||
                other.latestWeight == latestWeight) &&
            (identical(other.personalRecordWeight, personalRecordWeight) ||
                other.personalRecordWeight == personalRecordWeight) &&
            (identical(other.repetitions, repetitions) ||
                other.repetitions == repetitions) &&
            (identical(other.notes, notes) || other.notes == notes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    name,
    latestWeight,
    personalRecordWeight,
    repetitions,
    notes,
  );

  /// Create a copy of WorkoutModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WorkoutModelImplCopyWith<_$WorkoutModelImpl> get copyWith =>
      __$$WorkoutModelImplCopyWithImpl<_$WorkoutModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WorkoutModelImplToJson(this);
  }
}

abstract class _WorkoutModel implements WorkoutModel {
  const factory _WorkoutModel({
    required final String name,
    required final int latestWeight,
    required final int personalRecordWeight,
    required final int repetitions,
    final String? notes,
  }) = _$WorkoutModelImpl;

  factory _WorkoutModel.fromJson(Map<String, dynamic> json) =
      _$WorkoutModelImpl.fromJson;

  @override
  String get name;
  @override
  int get latestWeight;
  @override
  int get personalRecordWeight;
  @override
  int get repetitions;
  @override
  String? get notes;

  /// Create a copy of WorkoutModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WorkoutModelImplCopyWith<_$WorkoutModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
