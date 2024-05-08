import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:great_list_view/great_list_view.dart';

import '../bloc/tasks/tasks_bloc.dart';
import '../models/tasks/task.dart';
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

        if (state is TasksReordered) {
          _taskListController.notifyChangedRange(
            state.from,
            state.to - state.from,
            (context, index, data) {
              if (data.measuring) {
                return Container(margin: const EdgeInsets.all(5), height: 60);
              }

              var task = state.tasks.sublist(state.from, state.to)[index];
              var key = Key(task.id.toString());

              return TaskItem(task, key: key);
            },
          );
        }

        final list = [for (var task in state.tasks) task.copyWith()];

        return Scrollbar(
          controller: _taskListScrollController,
          child: AutomaticAnimatedListView<Task>(
            list: list,
            comparator: AnimatedListDiffListComparator<Task>(
                sameItem: (a, b) => a.id == b.id,
                sameContent: (a, b) =>
                    a.dateModifyUtc.compareTo(b.dateModifyUtc) == 0),
            itemBuilder: (BuildContext context, Task item,
                AnimatedWidgetBuilderData data) {
              if (data.measuring) {
                return Container(margin: const EdgeInsets.all(5), height: 60);
              }

              var key = Key(item.id.toString());

              return TaskItem(item, key: key);
            },
            listController: _taskListController,
            scrollController: _taskListScrollController,
            addLongPressReorderable: true,
            reorderModel: AnimatedListReorderModel(
              onReorderMove: (index, dropIndex) => true,
              onReorderStart: (index, dx, dy) => true,
              onReorderComplete: (index, dropIndex, slot) {
                list.insert(dropIndex, list.removeAt(index));

                context
                    .read<TasksBloc>()
                    .add(TasksEvent.reorderComplete(index, dropIndex));

                return true;
              },
            ),
          ),
        );
      },
    );
  }
}

final _taskListScrollController = ScrollController();
final _taskListController = AnimatedListController();
final taskListGkey = GlobalKey<_TaskListState>();
