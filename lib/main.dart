import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/di/injection.dart';
import 'features/workout/presentation/cubit/workout_list_screen_cubit.dart';
import 'features/workout/presentation/screen/workout_add_screen.dart';
import 'features/workout/presentation/screen/workout_list_screen.dart';

void main() {
  initDependencyInjection();
  runApp(const AppProviders());
}

class AppProviders extends StatelessWidget {
  const AppProviders({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<WorkoutListScreenCubit>(
          create: (_) => serviceLocator<WorkoutListScreenCubit>()..initialize(),
        ),
      ],
      child: MaterialApp(
        title: 'Workout Tracker',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: GestureDetector(
          onTap: () {
            // Unfocus any currently focused widget (dismisses keyboard)
            FocusScope.of(context).unfocus();
          },
          child: Scaffold(
            appBar: AppBar(title: const Text('Workout Tracker')),
            body: const WorkoutListScreen(),
          ),
        ),
        routes: {
          '/list': (context) => WorkoutListScreen(),
          '/add': (context) => WorkoutAddScreen(),
        },
      ),
    );
  }
}
