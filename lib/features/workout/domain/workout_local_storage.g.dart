// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'workout_local_storage.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetWorkoutLocalStorageCollection on Isar {
  IsarCollection<WorkoutLocalStorage> get workoutLocalStorages =>
      this.collection();
}

const WorkoutLocalStorageSchema = CollectionSchema(
  name: r'WorkoutLocalStorage',
  id: 364149698159347075,
  properties: {
    r'latestWeight': PropertySchema(
      id: 0,
      name: r'latestWeight',
      type: IsarType.long,
    ),
    r'name': PropertySchema(id: 1, name: r'name', type: IsarType.string),
    r'notes': PropertySchema(id: 2, name: r'notes', type: IsarType.string),
    r'personalRecordWeight': PropertySchema(
      id: 3,
      name: r'personalRecordWeight',
      type: IsarType.long,
    ),
    r'repetitions': PropertySchema(
      id: 4,
      name: r'repetitions',
      type: IsarType.long,
    ),
  },

  estimateSize: _workoutLocalStorageEstimateSize,
  serialize: _workoutLocalStorageSerialize,
  deserialize: _workoutLocalStorageDeserialize,
  deserializeProp: _workoutLocalStorageDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},

  getId: _workoutLocalStorageGetId,
  getLinks: _workoutLocalStorageGetLinks,
  attach: _workoutLocalStorageAttach,
  version: '3.3.0-dev.1',
);

int _workoutLocalStorageEstimateSize(
  WorkoutLocalStorage object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.name;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.notes;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _workoutLocalStorageSerialize(
  WorkoutLocalStorage object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.latestWeight);
  writer.writeString(offsets[1], object.name);
  writer.writeString(offsets[2], object.notes);
  writer.writeLong(offsets[3], object.personalRecordWeight);
  writer.writeLong(offsets[4], object.repetitions);
}

WorkoutLocalStorage _workoutLocalStorageDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = WorkoutLocalStorage();
  object.id = id;
  object.latestWeight = reader.readLongOrNull(offsets[0]);
  object.name = reader.readStringOrNull(offsets[1]);
  object.notes = reader.readStringOrNull(offsets[2]);
  object.personalRecordWeight = reader.readLongOrNull(offsets[3]);
  object.repetitions = reader.readLongOrNull(offsets[4]);
  return object;
}

P _workoutLocalStorageDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLongOrNull(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    case 3:
      return (reader.readLongOrNull(offset)) as P;
    case 4:
      return (reader.readLongOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _workoutLocalStorageGetId(WorkoutLocalStorage object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _workoutLocalStorageGetLinks(
  WorkoutLocalStorage object,
) {
  return [];
}

void _workoutLocalStorageAttach(
  IsarCollection<dynamic> col,
  Id id,
  WorkoutLocalStorage object,
) {
  object.id = id;
}

extension WorkoutLocalStorageQueryWhereSort
    on QueryBuilder<WorkoutLocalStorage, WorkoutLocalStorage, QWhere> {
  QueryBuilder<WorkoutLocalStorage, WorkoutLocalStorage, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension WorkoutLocalStorageQueryWhere
    on QueryBuilder<WorkoutLocalStorage, WorkoutLocalStorage, QWhereClause> {
  QueryBuilder<WorkoutLocalStorage, WorkoutLocalStorage, QAfterWhereClause>
  idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(lower: id, upper: id));
    });
  }

  QueryBuilder<WorkoutLocalStorage, WorkoutLocalStorage, QAfterWhereClause>
  idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<WorkoutLocalStorage, WorkoutLocalStorage, QAfterWhereClause>
  idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<WorkoutLocalStorage, WorkoutLocalStorage, QAfterWhereClause>
  idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<WorkoutLocalStorage, WorkoutLocalStorage, QAfterWhereClause>
  idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.between(
          lower: lowerId,
          includeLower: includeLower,
          upper: upperId,
          includeUpper: includeUpper,
        ),
      );
    });
  }
}

extension WorkoutLocalStorageQueryFilter
    on
        QueryBuilder<
          WorkoutLocalStorage,
          WorkoutLocalStorage,
          QFilterCondition
        > {
  QueryBuilder<WorkoutLocalStorage, WorkoutLocalStorage, QAfterFilterCondition>
  idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'id', value: value),
      );
    });
  }

  QueryBuilder<WorkoutLocalStorage, WorkoutLocalStorage, QAfterFilterCondition>
  idGreaterThan(Id value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'id',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<WorkoutLocalStorage, WorkoutLocalStorage, QAfterFilterCondition>
  idLessThan(Id value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'id',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<WorkoutLocalStorage, WorkoutLocalStorage, QAfterFilterCondition>
  idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'id',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
        ),
      );
    });
  }

  QueryBuilder<WorkoutLocalStorage, WorkoutLocalStorage, QAfterFilterCondition>
  latestWeightIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNull(property: r'latestWeight'),
      );
    });
  }

  QueryBuilder<WorkoutLocalStorage, WorkoutLocalStorage, QAfterFilterCondition>
  latestWeightIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNotNull(property: r'latestWeight'),
      );
    });
  }

  QueryBuilder<WorkoutLocalStorage, WorkoutLocalStorage, QAfterFilterCondition>
  latestWeightEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'latestWeight', value: value),
      );
    });
  }

  QueryBuilder<WorkoutLocalStorage, WorkoutLocalStorage, QAfterFilterCondition>
  latestWeightGreaterThan(int? value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'latestWeight',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<WorkoutLocalStorage, WorkoutLocalStorage, QAfterFilterCondition>
  latestWeightLessThan(int? value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'latestWeight',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<WorkoutLocalStorage, WorkoutLocalStorage, QAfterFilterCondition>
  latestWeightBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'latestWeight',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
        ),
      );
    });
  }

  QueryBuilder<WorkoutLocalStorage, WorkoutLocalStorage, QAfterFilterCondition>
  nameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNull(property: r'name'),
      );
    });
  }

  QueryBuilder<WorkoutLocalStorage, WorkoutLocalStorage, QAfterFilterCondition>
  nameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNotNull(property: r'name'),
      );
    });
  }

  QueryBuilder<WorkoutLocalStorage, WorkoutLocalStorage, QAfterFilterCondition>
  nameEqualTo(String? value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'name',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<WorkoutLocalStorage, WorkoutLocalStorage, QAfterFilterCondition>
  nameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'name',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<WorkoutLocalStorage, WorkoutLocalStorage, QAfterFilterCondition>
  nameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'name',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<WorkoutLocalStorage, WorkoutLocalStorage, QAfterFilterCondition>
  nameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'name',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<WorkoutLocalStorage, WorkoutLocalStorage, QAfterFilterCondition>
  nameStartsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'name',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<WorkoutLocalStorage, WorkoutLocalStorage, QAfterFilterCondition>
  nameEndsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'name',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<WorkoutLocalStorage, WorkoutLocalStorage, QAfterFilterCondition>
  nameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'name',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<WorkoutLocalStorage, WorkoutLocalStorage, QAfterFilterCondition>
  nameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'name',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<WorkoutLocalStorage, WorkoutLocalStorage, QAfterFilterCondition>
  nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'name', value: ''),
      );
    });
  }

  QueryBuilder<WorkoutLocalStorage, WorkoutLocalStorage, QAfterFilterCondition>
  nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'name', value: ''),
      );
    });
  }

  QueryBuilder<WorkoutLocalStorage, WorkoutLocalStorage, QAfterFilterCondition>
  notesIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNull(property: r'notes'),
      );
    });
  }

  QueryBuilder<WorkoutLocalStorage, WorkoutLocalStorage, QAfterFilterCondition>
  notesIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNotNull(property: r'notes'),
      );
    });
  }

  QueryBuilder<WorkoutLocalStorage, WorkoutLocalStorage, QAfterFilterCondition>
  notesEqualTo(String? value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'notes',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<WorkoutLocalStorage, WorkoutLocalStorage, QAfterFilterCondition>
  notesGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'notes',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<WorkoutLocalStorage, WorkoutLocalStorage, QAfterFilterCondition>
  notesLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'notes',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<WorkoutLocalStorage, WorkoutLocalStorage, QAfterFilterCondition>
  notesBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'notes',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<WorkoutLocalStorage, WorkoutLocalStorage, QAfterFilterCondition>
  notesStartsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'notes',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<WorkoutLocalStorage, WorkoutLocalStorage, QAfterFilterCondition>
  notesEndsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'notes',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<WorkoutLocalStorage, WorkoutLocalStorage, QAfterFilterCondition>
  notesContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'notes',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<WorkoutLocalStorage, WorkoutLocalStorage, QAfterFilterCondition>
  notesMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'notes',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<WorkoutLocalStorage, WorkoutLocalStorage, QAfterFilterCondition>
  notesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'notes', value: ''),
      );
    });
  }

  QueryBuilder<WorkoutLocalStorage, WorkoutLocalStorage, QAfterFilterCondition>
  notesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'notes', value: ''),
      );
    });
  }

  QueryBuilder<WorkoutLocalStorage, WorkoutLocalStorage, QAfterFilterCondition>
  personalRecordWeightIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNull(property: r'personalRecordWeight'),
      );
    });
  }

  QueryBuilder<WorkoutLocalStorage, WorkoutLocalStorage, QAfterFilterCondition>
  personalRecordWeightIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNotNull(property: r'personalRecordWeight'),
      );
    });
  }

  QueryBuilder<WorkoutLocalStorage, WorkoutLocalStorage, QAfterFilterCondition>
  personalRecordWeightEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'personalRecordWeight',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<WorkoutLocalStorage, WorkoutLocalStorage, QAfterFilterCondition>
  personalRecordWeightGreaterThan(int? value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'personalRecordWeight',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<WorkoutLocalStorage, WorkoutLocalStorage, QAfterFilterCondition>
  personalRecordWeightLessThan(int? value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'personalRecordWeight',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<WorkoutLocalStorage, WorkoutLocalStorage, QAfterFilterCondition>
  personalRecordWeightBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'personalRecordWeight',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
        ),
      );
    });
  }

  QueryBuilder<WorkoutLocalStorage, WorkoutLocalStorage, QAfterFilterCondition>
  repetitionsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNull(property: r'repetitions'),
      );
    });
  }

  QueryBuilder<WorkoutLocalStorage, WorkoutLocalStorage, QAfterFilterCondition>
  repetitionsIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNotNull(property: r'repetitions'),
      );
    });
  }

  QueryBuilder<WorkoutLocalStorage, WorkoutLocalStorage, QAfterFilterCondition>
  repetitionsEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'repetitions', value: value),
      );
    });
  }

  QueryBuilder<WorkoutLocalStorage, WorkoutLocalStorage, QAfterFilterCondition>
  repetitionsGreaterThan(int? value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'repetitions',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<WorkoutLocalStorage, WorkoutLocalStorage, QAfterFilterCondition>
  repetitionsLessThan(int? value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'repetitions',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<WorkoutLocalStorage, WorkoutLocalStorage, QAfterFilterCondition>
  repetitionsBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'repetitions',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
        ),
      );
    });
  }
}

extension WorkoutLocalStorageQueryObject
    on
        QueryBuilder<
          WorkoutLocalStorage,
          WorkoutLocalStorage,
          QFilterCondition
        > {}

extension WorkoutLocalStorageQueryLinks
    on
        QueryBuilder<
          WorkoutLocalStorage,
          WorkoutLocalStorage,
          QFilterCondition
        > {}

extension WorkoutLocalStorageQuerySortBy
    on QueryBuilder<WorkoutLocalStorage, WorkoutLocalStorage, QSortBy> {
  QueryBuilder<WorkoutLocalStorage, WorkoutLocalStorage, QAfterSortBy>
  sortByLatestWeight() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'latestWeight', Sort.asc);
    });
  }

  QueryBuilder<WorkoutLocalStorage, WorkoutLocalStorage, QAfterSortBy>
  sortByLatestWeightDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'latestWeight', Sort.desc);
    });
  }

  QueryBuilder<WorkoutLocalStorage, WorkoutLocalStorage, QAfterSortBy>
  sortByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<WorkoutLocalStorage, WorkoutLocalStorage, QAfterSortBy>
  sortByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<WorkoutLocalStorage, WorkoutLocalStorage, QAfterSortBy>
  sortByNotes() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'notes', Sort.asc);
    });
  }

  QueryBuilder<WorkoutLocalStorage, WorkoutLocalStorage, QAfterSortBy>
  sortByNotesDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'notes', Sort.desc);
    });
  }

  QueryBuilder<WorkoutLocalStorage, WorkoutLocalStorage, QAfterSortBy>
  sortByPersonalRecordWeight() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'personalRecordWeight', Sort.asc);
    });
  }

  QueryBuilder<WorkoutLocalStorage, WorkoutLocalStorage, QAfterSortBy>
  sortByPersonalRecordWeightDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'personalRecordWeight', Sort.desc);
    });
  }

  QueryBuilder<WorkoutLocalStorage, WorkoutLocalStorage, QAfterSortBy>
  sortByRepetitions() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'repetitions', Sort.asc);
    });
  }

  QueryBuilder<WorkoutLocalStorage, WorkoutLocalStorage, QAfterSortBy>
  sortByRepetitionsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'repetitions', Sort.desc);
    });
  }
}

extension WorkoutLocalStorageQuerySortThenBy
    on QueryBuilder<WorkoutLocalStorage, WorkoutLocalStorage, QSortThenBy> {
  QueryBuilder<WorkoutLocalStorage, WorkoutLocalStorage, QAfterSortBy>
  thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<WorkoutLocalStorage, WorkoutLocalStorage, QAfterSortBy>
  thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<WorkoutLocalStorage, WorkoutLocalStorage, QAfterSortBy>
  thenByLatestWeight() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'latestWeight', Sort.asc);
    });
  }

  QueryBuilder<WorkoutLocalStorage, WorkoutLocalStorage, QAfterSortBy>
  thenByLatestWeightDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'latestWeight', Sort.desc);
    });
  }

  QueryBuilder<WorkoutLocalStorage, WorkoutLocalStorage, QAfterSortBy>
  thenByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<WorkoutLocalStorage, WorkoutLocalStorage, QAfterSortBy>
  thenByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<WorkoutLocalStorage, WorkoutLocalStorage, QAfterSortBy>
  thenByNotes() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'notes', Sort.asc);
    });
  }

  QueryBuilder<WorkoutLocalStorage, WorkoutLocalStorage, QAfterSortBy>
  thenByNotesDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'notes', Sort.desc);
    });
  }

  QueryBuilder<WorkoutLocalStorage, WorkoutLocalStorage, QAfterSortBy>
  thenByPersonalRecordWeight() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'personalRecordWeight', Sort.asc);
    });
  }

  QueryBuilder<WorkoutLocalStorage, WorkoutLocalStorage, QAfterSortBy>
  thenByPersonalRecordWeightDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'personalRecordWeight', Sort.desc);
    });
  }

  QueryBuilder<WorkoutLocalStorage, WorkoutLocalStorage, QAfterSortBy>
  thenByRepetitions() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'repetitions', Sort.asc);
    });
  }

  QueryBuilder<WorkoutLocalStorage, WorkoutLocalStorage, QAfterSortBy>
  thenByRepetitionsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'repetitions', Sort.desc);
    });
  }
}

extension WorkoutLocalStorageQueryWhereDistinct
    on QueryBuilder<WorkoutLocalStorage, WorkoutLocalStorage, QDistinct> {
  QueryBuilder<WorkoutLocalStorage, WorkoutLocalStorage, QDistinct>
  distinctByLatestWeight() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'latestWeight');
    });
  }

  QueryBuilder<WorkoutLocalStorage, WorkoutLocalStorage, QDistinct>
  distinctByName({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'name', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<WorkoutLocalStorage, WorkoutLocalStorage, QDistinct>
  distinctByNotes({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'notes', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<WorkoutLocalStorage, WorkoutLocalStorage, QDistinct>
  distinctByPersonalRecordWeight() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'personalRecordWeight');
    });
  }

  QueryBuilder<WorkoutLocalStorage, WorkoutLocalStorage, QDistinct>
  distinctByRepetitions() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'repetitions');
    });
  }
}

extension WorkoutLocalStorageQueryProperty
    on QueryBuilder<WorkoutLocalStorage, WorkoutLocalStorage, QQueryProperty> {
  QueryBuilder<WorkoutLocalStorage, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<WorkoutLocalStorage, int?, QQueryOperations>
  latestWeightProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'latestWeight');
    });
  }

  QueryBuilder<WorkoutLocalStorage, String?, QQueryOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'name');
    });
  }

  QueryBuilder<WorkoutLocalStorage, String?, QQueryOperations> notesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'notes');
    });
  }

  QueryBuilder<WorkoutLocalStorage, int?, QQueryOperations>
  personalRecordWeightProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'personalRecordWeight');
    });
  }

  QueryBuilder<WorkoutLocalStorage, int?, QQueryOperations>
  repetitionsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'repetitions');
    });
  }
}
