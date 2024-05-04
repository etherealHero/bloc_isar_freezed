import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:great_list_view/great_list_view.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

import '../bloc/task_list_bloc.dart';
import '../models/task.dart';
import '../widgets/task_item.dart';

class TaskList extends StatefulWidget {
  const TaskList({super.key});

  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  late AnimatedListDiffListDispatcher<Task> dispatcher;

  @override
  void initState() {
    super.initState();

    dispatcher = AnimatedListDiffListDispatcher<Task>(
      controller: _taskListController,
      itemBuilder: itemBuilder,
      currentList: <Task>[],
      comparator: AnimatedListDiffListComparator<Task>(
          sameItem: (a, b) => a.id == b.id,
          sameContent: (a, b) => a.dateModify != b.dateModify),
    );

    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<TaskListBloc>().add(TaskListGetAllEvent());
    });
  }

  void dispatch(List<Task> list) {
    setState(() {
      dispatcher.dispatchNewList([...list], detectMoves: true);
    });
  }

  @override
  Widget build(BuildContext context) {
    return SlidableAutoCloseBehavior(
      child: Scrollbar(
        controller: _taskListScrollController,
        child: AnimatedListView(
          initialItemCount: dispatcher.currentList.length,
          itemBuilder: (context, index, data) =>
              itemBuilder(context, dispatcher.currentList[index], data),
          listController: _taskListController,
          scrollController: _taskListScrollController,
          addLongPressReorderable: true,
          reorderModel: AnimatedListReorderModel(
            onReorderStart: (index, dx, dy) => true,
            onReorderMove: (index, dropIndex) => true,
            onReorderComplete: (index, dropIndex, slot) {
              var list = dispatcher.currentList;
              list.insert(dropIndex, list.removeAt(index));

              context.read<TaskListBloc>().add(TaskListReorderCompleteEvent(
                  index: index, dropIndex: dropIndex));

              return true;
            },
          ),
        ),
      ),
    );
  }
}

Widget itemBuilder(
    BuildContext context, Task item, AnimatedWidgetBuilderData data) {
  if (data.measuring) {
    return Container(margin: const EdgeInsets.all(5), height: 60);
  }

  var key = Key(item.id!.toString());

  return TaskItem(data: item, key: key);
}

final _taskListScrollController = ScrollController();
final _taskListController = AnimatedListController();
final taskListGkey = GlobalKey<_TaskListState>();
