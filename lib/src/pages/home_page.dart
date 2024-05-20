import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../app/app.dart';
import '../bloc/groups/groups_bloc.dart';
import '../bloc/tasks/tasks_bloc.dart';
import '../widgets/group_list.dart';
import '../widgets/task_list.dart';
import '../shared/colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Container(
            width: 280,
            decoration: const BoxDecoration(
                border: Border(right: BorderSide(width: 1))),
            child: const GroupsList(),
          ),
          const Expanded(child: TaskList()),
        ],
      ),
      floatingActionButton: const HomePageFloatingActionButton(),
    );
  }
}

class HomePageFloatingActionButton extends StatelessWidget {
  const HomePageFloatingActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      const Spacer(),
      ElevatedButton(
          onPressed: () {
            final color = colorPallete[Random().nextInt(colorPallete.length)];
            context
                .read<GroupsBloc>()
                .add(GroupsEvent.add("title", color.value));
          },
          child: const Text('Add group')),
      const SizedBox(width: 10),
      ElevatedButton(
          onPressed: () => context.read<TasksBloc>().add(TasksEvent.add(
                "title",
                "description",
                App.of(context).selectedGroupNotifier.value,
              )),
          child: const Text('Add task')),
    ]);
  }
}
