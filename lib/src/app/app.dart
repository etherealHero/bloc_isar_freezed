import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/groups/groups_bloc.dart';
import '../bloc/tasks/tasks_bloc.dart';
import '../pages/home_page.dart';
import 'theme_provider.dart';

part "observer.dart";

class App extends StatefulWidget {
  const App({super.key, required ThemeController themeController})
      : _themeController = themeController;

  final ThemeController _themeController;

  static AppState of(BuildContext context) {
    return context.findAncestorStateOfType<AppState>()!;
  }

  @override
  State<App> createState() => AppState();
}

class AppState extends State<App> {
  final ValueNotifier<int?> selectedGroupNotifier = ValueNotifier<int?>(null);

  @override
  Widget build(BuildContext context) {
    return ThemeProvider(
      controller: widget._themeController,
      builder: (context, _) => MaterialApp(
          title: 'Test App',
          darkTheme: ThemeData(brightness: Brightness.dark),
          themeMode: widget._themeController.currentTheme,
          home: MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (context) =>
                    GroupsBloc()..add(const GroupsEvent.getAll()),
              ),
              BlocProvider(
                create: (context) =>
                    TasksBloc()..add(const TasksEvent.getAll()),
              ),
            ],
            child: const SafeArea(child: HomePage()),
          )),
    );
  }
}
