import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sandbox/src/app/app.dart';

import '../bloc/tasks/tasks_bloc.dart';
import '../models/task/task.dart';

class TaskItem extends StatelessWidget {
  const TaskItem(this.task, {super.key});

  final Task task;

  @override
  Widget build(BuildContext context) {
    return SelectedGroupProvider(
      groupContext: task.groupId,
      child: Card.filled(
          margin: const EdgeInsets.all(5),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'id ${task.id}(${task.order}) gId ${task.groupId}',
                  style: const TextStyle(fontSize: 16),
                ),
                Row(children: [
                  task.isDone
                      ? IconButton.filled(
                          onPressed: () => context.read<TasksBloc>().add(
                              TasksEvent.update(
                                  task.copyWith(isDone: !task.isDone))),
                          icon: const Icon(Icons.done))
                      : IconButton.outlined(
                          onPressed: () => context.read<TasksBloc>().add(
                              TasksEvent.update(
                                  task.copyWith(isDone: !task.isDone))),
                          icon: const Icon(Icons.done)),
                  const SizedBox(width: 5),
                  IconButton.outlined(
                      onPressed: () => context
                          .read<TasksBloc>()
                          .add(TasksEvent.delete(task.id)),
                      icon: const Icon(Icons.close))
                ]),
              ],
            ),
          )),
    );
  }
}

class SelectedGroupProvider extends StatelessWidget {
  const SelectedGroupProvider(
      {super.key, required this.child, required this.groupContext});

  final Widget child;
  final int? groupContext;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: App.selectedGroup(context),
        builder: (context, groupdId, _) {
          if (groupdId == null || groupContext == groupdId) {
            return child;
          } else {
            return const SizedBox.shrink();
          }
        });
  }
}
