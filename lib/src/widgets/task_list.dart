import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:great_list_view/great_list_view.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

import '../bloc/tasks_bloc.dart';
import '../models/task.dart';
import '../widgets/task_item.dart';

class TaskList extends StatefulWidget {
  const TaskList({super.key});

  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TasksBloc, TasksState>(
      builder: (context, state) {
        if (state is TasksInitial) {
          return const CircularProgressIndicator();
        }

        var list = [for (var task in state.tasks) task.copyWith()];

        return SlidableAutoCloseBehavior(
            child: Scrollbar(
          controller: _taskListScrollController,
          child: AutomaticAnimatedListView<Task>(
            list: list,
            comparator: AnimatedListDiffListComparator<Task>(
                sameItem: (a, b) => a.id == b.id,
                sameContent: (a, b) =>
                    a.dateModifyUtc.compareTo(b.dateModifyUtc) == 0),
            itemBuilder: itemBuilder,
            listController: _taskListController,
            scrollController: _taskListScrollController,
            addLongPressReorderable: true,
            reorderModel: TaskListReorderModel(list, (index, dropIndex, cb) {
              context
                  .read<TasksBloc>()
                  .add(TasksEvent.reorderComplete(index, dropIndex, cb));
            }),
          ),
        ));
      },
    );
  }
}

Widget itemBuilder(
    BuildContext context, Task item, AnimatedWidgetBuilderData data) {
  if (data.measuring) {
    return Container(margin: const EdgeInsets.all(5), height: 60);
  }

  var key = Key(item.id.toString());

  return TaskItem(data: item, key: key);
}

class TaskListReorderModel extends AutomaticAnimatedListReorderModel<Task> {
  TaskListReorderModel(
    super.list,
    Function(int index, int dropIndex, void Function(List<Task> range) cb)
        onCompleteEventCallback,
  ) : _onCompleteEventCallback = onCompleteEventCallback;

  final Function(int index, int dropIndex, void Function(List<Task> range) cb)?
      _onCompleteEventCallback;

  @override
  bool onReorderComplete(int index, int dropIndex, Object? slot) {
    final from = min(dropIndex, index);
    final to = max(dropIndex, index) + 1;

    list.insert(dropIndex, list.removeAt(index));

    _onCompleteEventCallback?.call(index, dropIndex, (tasks) {
      _taskListController.notifyChangedRange(
        from,
        to - from,
        (context, index, data) =>
            itemBuilder(context, tasks.sublist(from, to)[index], data),
      );
    });

    return true;
  }
}

final _taskListScrollController = ScrollController();
final _taskListController = AnimatedListController();
final taskListGkey = GlobalKey<_TaskListState>();
