import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sandbox/src/bloc/groups/groups_bloc.dart';

import '../models/task/task.dart';
import '../app/app.dart';

// TODO: add swipeable feature
class TaskItem extends StatelessWidget {
  const TaskItem(this.task, {super.key});

  final Task task;

  @override
  Widget build(BuildContext context) {
    var color = int.tryParse('0X${task.group?.color.toRadixString(16)}');

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
                'id ${task.id}(${task.order}) gId ${task.group?.id}',
                style: const TextStyle(fontSize: 16),
              ),
              Row(children: [
                task.isDone
                    ? IconButton.filled(
                        onPressed: () => AppController(context)
                            .updateTask(task.copyWith(isDone: !task.isDone)),
                        icon: const Icon(Icons.done))
                    : IconButton.outlined(
                        onPressed: () => AppController(context)
                            .updateTask(task.copyWith(isDone: !task.isDone)),
                        icon: const Icon(Icons.done)),
                const SizedBox(width: 5),
                IconButton.outlined(
                    onPressed: () {
                      var groups = context
                          .read<GroupsBloc>()
                          .state
                          .groups
                          .where((g) => g.id != task.group?.id)
                          .toList();
                      var group = groups[Random().nextInt(groups.length)];
                      AppController(context)
                          .updateTask(task.copyWith(group: group));
                    },
                    icon: const Icon(Icons.list_alt_rounded)),
                const SizedBox(width: 5),
                IconButton.outlined(
                    onPressed: () => AppController(context).removeTask(task),
                    icon: const Icon(Icons.close))
              ]),
            ],
          ),
        ));
  }
}
