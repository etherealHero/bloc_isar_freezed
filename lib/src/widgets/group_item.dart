import 'dart:math';

import 'package:flutter/material.dart';
import 'package:sandbox/src/shared/colors.dart';

import '../app/app.dart';
import '../models/group/group.dart';

class GroupItem extends StatelessWidget {
  const GroupItem(this.group, {super.key});

  final Group group;

  @override
  Widget build(BuildContext context) {
    final int doneTasksCount = group.tasks.where((t) => t.isDone).length;
    final int tasksCount = group.tasks.length;

    return Card.filled(
        margin: const EdgeInsets.all(5),
        color: Color(int.parse('0X${group.color.toRadixString(16)}')),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'id ${group.id}(${group.order}), $doneTasksCount/$tasksCount',
                style: const TextStyle(fontSize: 16),
              ),
              Row(children: [
                ValueListenableBuilder(
                  valueListenable: AppController(context).selectedGroupNotifier,
                  builder: (context, currentSelectedGroup, child) =>
                      IconButton.outlined(
                    onPressed: () => AppController(context)
                        .toggleGroupIsSelected(group, currentSelectedGroup),
                    icon: Icon(currentSelectedGroup == group.id
                        ? Icons.pin_drop
                        : Icons.pin_drop_outlined),
                  ),
                ),
                const SizedBox(width: 5),
                IconButton.outlined(
                    onPressed: () {
                      final color =
                          colorPallete[Random().nextInt(colorPallete.length)];
                      AppController(context)
                          .changeGroupColor(group, color.value);
                    },
                    icon: const Icon(Icons.color_lens_outlined)),
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
