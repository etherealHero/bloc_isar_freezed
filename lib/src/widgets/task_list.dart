import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:great_list_view/great_list_view.dart';

import '../app/app.dart';
import '../bloc/tasks/tasks_bloc.dart';
import '../models/task/task.dart';
import '../widgets/task_item.dart';

class TaskList extends StatefulWidget {
  const TaskList({super.key});

  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  late AnimatedListDiffListDispatcher<Task> _dispatcher;

  @override
  void initState() {
    super.initState();

    _dispatcher = AnimatedListDiffListDispatcher<Task>(
      controller: _listController,
      itemBuilder: itemBuilder,
      currentList: <Task>[],
      comparator: AnimatedListDiffListComparator<Task>(
          sameItem: (a, b) => a.id == b.id,
          sameContent: (a, b) =>
              a.dateModifyUtc.compareTo(b.dateModifyUtc) == 0),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TasksBloc, TasksState>(
      builder: (context, state) {
        if (state.isFetching) {
          return const CircularProgressIndicator();
        }

        WidgetsBinding.instance.addPostFrameCallback(
          (_) => setState(() {
            var selectedGroup = AppController(context).selectedGroup;
            var tasks = [for (var task in state.tasks) task.copyWith()];

            if (selectedGroup != null) {
              tasks = tasks.where((t) => t.groupId == selectedGroup).toList();
            }

            _dispatcher.dispatchNewList(tasks);
          }),
        );

        return Scrollbar(
          controller: _scrollController,
          child: AnimatedListView(
            initialItemCount: _dispatcher.currentList.length,
            itemBuilder: (context, index, data) =>
                itemBuilder(context, _dispatcher.currentList[index], data),
            listController: _listController,
            scrollController: _scrollController,
            addLongPressReorderable: true,
            reorderModel: AnimatedListReorderModel(
              onReorderMove: (_, __) => true,
              onReorderStart: (_, __, ___) => true,
              onReorderComplete: (index, dropIndex, _) {
                final list = _dispatcher.currentList;
                final id = list.elementAt(index).id;
                final dropId = list.elementAt(dropIndex).id;

                list.insert(dropIndex, list.removeAt(index));

                context
                    .read<TasksBloc>()
                    .add(TasksEvent.reorderComplete(id, dropId));

                return true;
              },
            ),
          ),
        );
      },
    );
  }
}

final _scrollController = ScrollController();
final _listController = AnimatedListController();

Widget itemBuilder(
    BuildContext context, Task item, AnimatedWidgetBuilderData data) {
  if (data.measuring) {
    return Container(margin: const EdgeInsets.all(5), height: 60);
  }

  var key = Key(item.id.toString());

  return TaskItem(item, key: key);
}
