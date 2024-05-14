import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sandbox/src/app/app.dart';

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
                'Item ${group.id}, order ${group.order}',
                style: const TextStyle(fontSize: 16),
              ),
              Row(children: [
                ValueListenableBuilder(
                  valueListenable: App.selectedGroup(context),
                  builder: (context, groupdId, child) => IconButton.outlined(
                    onPressed: () => App.selectedGroup(context).value =
                        groupdId == group.id ? null : group.id,
                    icon: Icon(groupdId == group.id
                        ? Icons.pin_drop
                        : Icons.pin_drop_outlined),
                  ),
                ),
                const SizedBox(width: 5),
                IconButton.outlined(
                    onPressed: () => context
                        .read<GroupsBloc>()
                        .add(GroupsEvent.delete(group.id!)),
                    icon: const Icon(Icons.close))
              ]),
            ],
          ),
        ));
  }
}
