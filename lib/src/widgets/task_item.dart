import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/task_list_bloc.dart';
import '../models/task.dart';

class TaskItem extends StatelessWidget {
  final Task data;

  const TaskItem({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () => context
            .read<TaskListBloc>()
            .add(TaskListDeleteTaskEvent(taskId: data.id!)),
        child: AnimatedContainer(
            height: 60,
            duration: const Duration(milliseconds: 500),
            margin: const EdgeInsets.all(5),
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
                color: Colors.amber,
                border: Border.all(color: Colors.black12, width: 0)),
            child: Center(
                child: Text(
              'Item ${data.id}, order ${data.order}',
              style: const TextStyle(fontSize: 16),
            ))));
  }
}
