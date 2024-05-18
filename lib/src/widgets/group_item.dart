import 'package:flutter/material.dart';

import '../app/app.dart';
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
                'id ${group.id}(${group.order}), ${group.tasks.where((t) => t.isDone).length}/${group.tasks.length} items',
                style: const TextStyle(fontSize: 16),
              ),
              Row(children: [
                ValueListenableBuilder(
                  valueListenable: AppController(context).selectedGroupNotifier,
                  builder: (context, groupdId, child) => IconButton.outlined(
                    onPressed: () => AppController(context)
                        .changeSelectedGroup(group, groupdId),
                    icon: Icon(groupdId == group.id
                        ? Icons.pin_drop
                        : Icons.pin_drop_outlined),
                  ),
                ),
                const SizedBox(width: 5),
                IconButton.outlined(
                    onPressed: () => AppController(context).removeGroup(group),
                    icon: const Icon(Icons.close))
              ]),
            ],
          ),
        ));
  }
}
