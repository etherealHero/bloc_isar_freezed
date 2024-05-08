import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/groups/groups_bloc.dart';
import '../bloc/tasks/tasks_bloc.dart';
import '../widgets/task_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: MultiBlocProvider(
            providers: [
          BlocProvider(
            create: (context) => TasksBloc()..add(const TasksEvent.getAll()),
          ),
          BlocProvider(
            create: (context) => GroupsBloc()..add(const GroupsEvent.getAll()),
          ),
        ],
            child: Scaffold(
              body: Row(
                children: [
                  Container(
                    width: 250,
                    decoration: const BoxDecoration(
                        border: Border(right: BorderSide(width: 1))),
                  ),
                  Expanded(child: TaskList(key: taskListGkey)),
                ],
              ),
              floatingActionButton: const HomePageFloatingActionButton(),
            )));
  }
}

class HomePageFloatingActionButton extends StatelessWidget {
  const HomePageFloatingActionButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        context
            .read<TasksBloc>()
            .add(const TasksEvent.add("title", "description"));
      },
      child: const Text('Add'),
    );
  }
}
