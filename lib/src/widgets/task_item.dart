import 'package:flutter/material.dart';
import 'package:sandbox/src/app/app.dart';

import '../models/task/task.dart';

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
                        onPressed: () =>
                            AppController(context).toggleTaskIsDone(task),
                        icon: const Icon(Icons.done))
                    : IconButton.outlined(
                        onPressed: () =>
                            AppController(context).toggleTaskIsDone(task),
                        icon: const Icon(Icons.done)),
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
