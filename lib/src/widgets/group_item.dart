import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../app/app.dart';
import '../bloc/groups/groups_bloc.dart';
import '../bloc/tasks/tasks_bloc.dart';
import '../models/group/group.dart';
import '../shared/colors.dart';

class GroupItem extends StatelessWidget {
  const GroupItem(this.group, {super.key});

  final Group group;

  @override
  Widget build(BuildContext context) {
    final tasks = context.select((TasksBloc bloc) => bloc.state.tasks);
    final tasksInGroup = tasks.where((t) => t.groupId == group.id);
    final int doneTasksCount = tasksInGroup.where((t) => t.isDone).length;
    final int tasksCount = tasksInGroup.length;
    final color = int.tryParse('0X${group.color.toRadixString(16)}');

    return Card.filled(
        margin: const EdgeInsets.all(5),
        color: color == null
            ? null
            : Color(int.parse('0X${color.toRadixString(16)}')),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'id ${group.id}(${group.order}), $doneTasksCount/$tasksCount',
                style: const TextStyle(fontSize: 16),
              ),
              Row(children: [
                ValueListenableBuilder(
                  valueListenable: App.of(context).selectedGroupNotifier,
                  builder: (context, currentSelectedGroup, child) =>
                      IconButton.outlined(
                    onPressed: () =>
                        App.of(context).selectedGroupNotifier.value =
                            currentSelectedGroup == group.id ? null : group.id,
                    icon: Icon(currentSelectedGroup == group.id
                        ? Icons.pin_drop
                        : Icons.pin_drop_outlined),
                  ),
                ),
                const SizedBox(width: 5),
                IconButton.outlined(
                    onPressed: () {
                      final color =
                          colorPallete[Random().nextInt(colorPallete.length)];

                      context.read<GroupsBloc>().add(GroupsEvent.update(
                          group.copyWith(color: color.value)));
                    },
                    icon: const Icon(Icons.color_lens_outlined)),
                const SizedBox(width: 5),
                IconButton.outlined(
                    onPressed: () {
                      context
                          .read<GroupsBloc>()
                          .add(GroupsEvent.delete(group.id));

                      for (var task in tasksInGroup) {
                        context
                            .read<TasksBloc>()
                            .add(TasksEvent.delete(task.id));
                      }
                    },
                    icon: const Icon(Icons.close))
              ]),
            ],
          ),
        ));
  }
}
