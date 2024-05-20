import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/groups/groups_bloc.dart';
import '../bloc/tasks/tasks_bloc.dart';
import '../models/group/group.dart';
import '../models/task/task.dart';

// TODO: add swipeable feature
class TaskItem extends StatelessWidget {
  const TaskItem(this.task, {super.key});

  final Task task;

  @override
  Widget build(BuildContext context) {
    final groups = context.select((GroupsBloc bloc) => bloc.state.groups);
    Group? group;

    try {
      group = groups.firstWhere((g) => g.id == task.groupId);
    } on StateError {
      group = null;
    }

    var color = int.tryParse('0X${group?.color.toRadixString(16)}');

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
                'id ${task.id}(${task.order}) gId ${group?.id}',
                style: const TextStyle(fontSize: 16),
              ),
              Row(children: [
                task.isDone
                    ? IconButton.filled(
                        onPressed: () {
                          context.read<TasksBloc>().add(TasksEvent.update(
                              task.copyWith(isDone: !task.isDone)));
                        },
                        icon: const Icon(Icons.done))
                    : IconButton.outlined(
                        onPressed: () {
                          context.read<TasksBloc>().add(TasksEvent.update(
                              task.copyWith(isDone: !task.isDone)));
                        },
                        icon: const Icon(Icons.done)),
                const SizedBox(width: 5),
                IconButton.outlined(
                    onPressed: () {
                      final otherGroups =
                          groups.where((g) => g.id != task.groupId).toList();
                      if (otherGroups.isEmpty) return;
                      final otherGroup =
                          otherGroups[Random().nextInt(otherGroups.length)];
                      context.read<TasksBloc>().add(TasksEvent.update(
                          task.copyWith(groupId: otherGroup.id)));
                    },
                    icon: const Icon(Icons.list_alt_rounded)),
                const SizedBox(width: 5),
                IconButton.outlined(
                    onPressed: () => context
                        .read<TasksBloc>()
                        .add(TasksEvent.delete(task.id)),
                    icon: const Icon(Icons.close))
              ]),
            ],
          ),
        ));
  }
}
