import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:great_list_view/great_list_view.dart';

import '../bloc/groups/groups_bloc.dart';
import '../models/group/group.dart';
import 'group_item.dart';

class GroupsList extends StatefulWidget {
  const GroupsList({super.key});

  @override
  State<GroupsList> createState() => _GroupsListState();
}

class _GroupsListState extends State<GroupsList> {
  late AnimatedListDiffListDispatcher<Group> _dispatcher;

  @override
  void initState() {
    super.initState();

    _dispatcher = AnimatedListDiffListDispatcher<Group>(
      controller: _listController,
      itemBuilder: itemBuilder,
      currentList: <Group>[],
      comparator: AnimatedListDiffListComparator<Group>(
          sameItem: (a, b) => a.id == b.id,
          sameContent: (a, b) =>
              a.dateModifyUtc.compareTo(b.dateModifyUtc) == 0),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GroupsBloc, GroupsState>(
      builder: (context, state) {
        if (state.isFetching) {
          return const Center(child: CircularProgressIndicator());
        }

        WidgetsBinding.instance.addPostFrameCallback(
          (_) => setState(() {
            _dispatcher.dispatchNewList(
                [for (var group in state.groups) group.copyWith()]);
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
                    .read<GroupsBloc>()
                    .add(GroupsEvent.reorderComplete(id, dropId));

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
    BuildContext context, Group item, AnimatedWidgetBuilderData data) {
  if (data.measuring) {
    return Container(margin: const EdgeInsets.all(5), height: 60);
  }

  var key = Key(item.id.toString());

  return GroupItem(item, key: key);
}
