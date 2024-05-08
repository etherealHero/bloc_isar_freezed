import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:great_list_view/great_list_view.dart';

import '../bloc/groups/groups_bloc.dart';
import '../models/group/group.dart';
import 'group_item.dart';

class GroupList extends StatefulWidget {
  const GroupList({super.key});

  @override
  State<GroupList> createState() => _GroupListState();
}

class _GroupListState extends State<GroupList> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GroupsBloc, GroupsState>(
      builder: (context, state) {
        if (state is GroupsInitial) {
          return const CircularProgressIndicator();
        }

        if (state is GroupsReordered) {
          _listController.notifyChangedRange(
            state.from,
            state.to - state.from,
            (context, index, data) {
              if (data.measuring) {
                return Container(margin: const EdgeInsets.all(5), height: 60);
              }

              var itemData = state.groups.sublist(state.from, state.to)[index];
              var key = Key(itemData.id.toString());

              return GroupItem(itemData, key: key);
            },
          );
        }

        if (state is GroupsUpdatedSome) {
          _listController.notifyChangedRange(
            state.index,
            1,
            (context, index, data) {
              if (data.measuring) {
                return Container(margin: const EdgeInsets.all(5), height: 60);
              }

              var itemData = state.groups.sublist(state.index, 1)[index];
              var key = Key(itemData.id.toString());

              return GroupItem(itemData, key: key);
            },
          );
        }

        final list = [for (var group in state.groups) group.copyWith()];

        return Scrollbar(
          controller: _scrollController,
          child: AutomaticAnimatedListView<Group>(
            list: list,
            comparator: AnimatedListDiffListComparator(
                sameItem: (a, b) => a.id == b.id,
                sameContent: (a, b) =>
                    a.dateModifyUtc.compareTo(b.dateModifyUtc) == 0),
            itemBuilder: (context, item, data) {
              if (data.measuring) {
                return Container(margin: const EdgeInsets.all(5), height: 60);
              }

              var key = Key(item.id.toString());

              return GroupItem(item, key: key);
            },
            listController: _listController,
            scrollController: _scrollController,
            addLongPressReorderable: true,
            reorderModel: AnimatedListReorderModel(
              onReorderMove: (index, dropIndex) => true,
              onReorderStart: (index, dx, dy) => true,
              onReorderComplete: (index, dropIndex, slot) {
                list.insert(dropIndex, list.removeAt(index));

                context
                    .read<GroupsBloc>()
                    .add(GroupsEvent.reorderComplete(index, dropIndex));

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
