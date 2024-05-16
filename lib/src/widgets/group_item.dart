import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../app/app.dart';
import '../bloc/tasks/tasks_bloc.dart';
import '../bloc/groups/groups_bloc.dart';
import '../models/group/group.dart';

class GroupItem extends StatelessWidget {
  const GroupItem(this.group, {super.key});

  final Group group;

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
                // TODO: create bloc observer(tasks & groups) когда добавляются задачи в существующую группу, в группе не актуализируются ссылки и поэтому не удаляются задачи при удалении группы
                'id ${group.id}(${group.order}), ${group.tasks.length} items',
                style: const TextStyle(fontSize: 16),
              ),
              Row(children: [
                ValueListenableBuilder(
                  valueListenable: App.selectedGroup(context),
                  builder: (context, groupdId, child) => IconButton.outlined(
                    onPressed: () {
                      var patchedSelectedGroup =
                          groupdId == group.id ? null : group.id;

                      App.selectedGroup(context).value = patchedSelectedGroup;

                      context
                          .read<TasksBloc>()
                          .add(TasksEvent.filterByGroup(patchedSelectedGroup));
                    },
                    icon: Icon(groupdId == group.id
                        ? Icons.pin_drop
                        : Icons.pin_drop_outlined),
                  ),
                ),
                const SizedBox(width: 5),
                IconButton.outlined(
                    onPressed: () {
                      for (var task in group.tasks) {
                        context
                            .read<TasksBloc>()
                            .add(TasksEvent.delete(task.id));
                      }

                      context
                          .read<GroupsBloc>()
                          .add(GroupsEvent.delete(group.id));
                    },
                    icon: const Icon(Icons.close))
              ]),
            ],
          ),
        ));
  }
}
