import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/tasks_bloc.dart';
import '../models/task.dart';

class TaskItem extends StatelessWidget {
  final Task data;

  const TaskItem({super.key, required this.data});

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
                'Item ${data.id}, order ${data.order}',
                style: const TextStyle(fontSize: 16),
              ),
              Row(children: [
                data.isDone
                    ? IconButton.filled(
                        onPressed: () => context.read<TasksBloc>().add(
                            TasksEvent.update(
                                data.copyWith(isDone: !data.isDone))),
                        icon: const Icon(Icons.done))
                    : IconButton.outlined(
                        onPressed: () => context.read<TasksBloc>().add(
                            TasksEvent.update(
                                data.copyWith(isDone: !data.isDone))),
                        icon: const Icon(Icons.done)),
                const SizedBox(width: 5),
                IconButton.outlined(
                    onPressed: () => context
                        .read<TasksBloc>()
                        .add(TasksEvent.delete(data.id!)),
                    icon: const Icon(Icons.close))
              ]),
            ],
          ),
        ));
  }
}
