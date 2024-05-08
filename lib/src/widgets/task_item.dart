import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/tasks/tasks_bloc.dart';
import '../models/tasks/task.dart';

class TaskItem extends StatelessWidget {
  const TaskItem(this.task, {super.key});

  final Task task;

  @override
  Widget build(BuildContext context) {
    return Card.filled(
        margin: const EdgeInsets.all(5),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Item ${task.id}, order ${task.order}',
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
                        .add(TasksEvent.delete(task.id!)),
                    icon: const Icon(Icons.close))
              ]),
            ],
          ),
        ));
  }
}
