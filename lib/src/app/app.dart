import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/task_list_bloc.dart';
import '../models/task.dart';
import '../widgets/task_list.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Test App',
        home: SafeArea(
            child: BlocProvider(
          create: (context) =>
              TaskListBloc(dispatcher: taskListGkey.currentState?.dispatcher),
          child: Scaffold(
            body: TaskList(key: taskListGkey),
            floatingActionButton: const AppFloatingActionButton(),
          ),
        )));
  }
}

class AppFloatingActionButton extends StatelessWidget {
  const AppFloatingActionButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        context.read<TaskListBloc>().add(TaskListAddTaskEvent(
            task: Task(title: "title", description: "description", order: -1)));
      },
      child: const Text('Add'),
    );
  }
}
