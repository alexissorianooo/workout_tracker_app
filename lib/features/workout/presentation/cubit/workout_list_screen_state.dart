part of 'workout_list_screen_cubit.dart';

@freezed
class WorkoutListScreenState with _$WorkoutListScreenState {
  const factory WorkoutListScreenState.loading() = _WorkoutListScreenLoading;
  const factory WorkoutListScreenState.loaded(List<WorkoutModel> workouts) =
      _WorkoutListScreenLoaded;
  const factory WorkoutListScreenState.empty() = _WorkoutListScreenEmpty;
  const factory WorkoutListScreenState.error(String message) =
      _WorkoutListScreenError;
}
