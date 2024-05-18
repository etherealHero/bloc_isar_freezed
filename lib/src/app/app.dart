import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sandbox/src/models/task/task.dart';

import '../bloc/groups/groups_bloc.dart';
import '../bloc/tasks/tasks_bloc.dart';
import '../models/group/group.dart';
import '../pages/home_page.dart';

part "observer.dart";
part "controller.dart";

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => AppState();
}

class AppState extends State<App> {
  final ValueNotifier<int?> _selectedGroupNotifier = ValueNotifier<int?>(null);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Test App',
        home: MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) =>
                  GroupsBloc()..add(const GroupsEvent.getAll()),
            ),
            BlocProvider(
              create: (context) => TasksBloc()..add(const TasksEvent.getAll()),
            ),
          ],
          child: const SafeArea(child: HomePage()),
        ));
  }
}
