import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

import '../bloc/task_list_bloc.dart';
import '../models/task.dart';

class TaskItem extends StatefulWidget {
  final Task data;

  const TaskItem({super.key, required this.data});

  @override
  State<TaskItem> createState() => _TaskItemState();
}

class _TaskItemState extends State<TaskItem>
    with SingleTickerProviderStateMixin {
  late final controller = SlidableController(this);

  @override
  Widget build(BuildContext context) {
    return Slidable(
        key: widget.key,
        groupTag: "0",
        startActionPane: ActionPane(
            motion: const ScrollMotion(),
            // dismissible: DismissiblePane(
            //   onDismissed: () {
            //     var dispatcher = taskListGkey.currentState!.dispatcher;
            //     var list = dispatcher.currentList;
            //     var index = list.indexOf(widget.data);
            //     // TODO: не работает
            //     dispatcher.controller.notifyRemovedRange(
            //         index,
            //         1,
            //         (context, index, data) =>
            //             itemBuilder(context, list[index], data));
            //   },
            // ),
            children: [
              CustomSlidableAction(
                  backgroundColor: Colors.transparent,
                  onPressed: (context) {},
                  child: Builder(builder: (context) {
                    return TextButton.icon(
                        onPressed: () {
                          context
                              .read<TaskListBloc>()
                              .add(TaskListUpdateTaskEvent(
                                task: widget.data
                                    .copyWith(isDone: !widget.data.isDone),
                              ));
                        },
                        icon: Icon(Icons.done,
                            color: Theme.of(context)
                                .colorScheme
                                .onBackground
                                .withAlpha(160)),
                        label: Text('Toggle',
                            style: TextStyle(
                                color: Theme.of(context)
                                    .colorScheme
                                    .onBackground)));
                  }))
            ]),
        endActionPane: ActionPane(
            // dismissible: DismissiblePane(
            //   onDismissed: () {},
            // ),
            motion: const ScrollMotion(),
            children: [
              CustomSlidableAction(
                  backgroundColor: Colors.transparent,
                  onPressed: (context) {},
                  child: Builder(builder: (context) {
                    return TextButton.icon(
                        onPressed: () {
                          context
                              .read<TaskListBloc>()
                              .add(TaskListDeleteTaskEvent(
                                taskId: widget.data.id,
                              ));
                        },
                        icon: Icon(Icons.delete_outline_rounded,
                            color: Theme.of(context)
                                .colorScheme
                                .onBackground
                                .withAlpha(160)),
                        label: Text('Delete',
                            style: TextStyle(
                                color: Theme.of(context)
                                    .colorScheme
                                    .onBackground)));
                  }))
            ]),
        child: _TaskCard(data: widget.data));
  }
}

class _TaskCard extends StatelessWidget {
  const _TaskCard({required this.data});

  final Task data;

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
                        onPressed: () => context.read<TaskListBloc>().add(
                            TaskListUpdateTaskEvent(
                                task: data.copyWith(isDone: !data.isDone))),
                        icon: const Icon(Icons.done))
                    : IconButton.outlined(
                        onPressed: () => context.read<TaskListBloc>().add(
                            TaskListUpdateTaskEvent(
                                task: data.copyWith(isDone: !data.isDone))),
                        icon: const Icon(Icons.done)),
                const SizedBox(width: 5),
                IconButton.outlined(
                    onPressed: () => context
                        .read<TaskListBloc>()
                        .add(TaskListDeleteTaskEvent(taskId: data.id)),
                    icon: const Icon(Icons.close))
              ]),
            ],
          ),
        ));
  }
}
