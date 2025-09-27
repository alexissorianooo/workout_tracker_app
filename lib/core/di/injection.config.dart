// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../../features/workout/data/isar_service.dart' as _i944;
import '../../features/workout/data/workout_repository.dart' as _i33;
import '../../features/workout/presentation/cubit/workout_list_screen_cubit.dart'
    as _i717;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.lazySingleton<_i944.IsarService>(() => _i944.IsarService());
    gh.lazySingleton<_i33.IWorkoutRepository>(
      () => _i33.WorkoutRepository(gh<_i944.IsarService>()),
    );
    gh.lazySingleton<_i717.WorkoutListScreenCubit>(
      () => _i717.WorkoutListScreenCubit(gh<_i33.IWorkoutRepository>()),
    );
    return this;
  }
}
